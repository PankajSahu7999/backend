const fs = require('fs');
const path = require('path');

// Read seed-category-faqs.ts to get CATEGORY_FAQS array
const tsContent = fs.readFileSync(path.join(__dirname, 'seed-category-faqs.ts'), 'utf-8');

// Match all FAQ objects
const regex = /{\s*category:\s*['"]([^'"]+)['"],\s*question:\s*['"]([^'"]+)['"],\s*answer:\s*['"]([\s\S]*?)['"],\s*sort_order:\s*(\d+),?\s*}/g;

const faqs = [];
let match;
while ((match = regex.exec(tsContent)) !== null) {
  faqs.push({
    category: match[1],
    question: match[2].trim(),
    answer: match[3].replace(/\s+/g, ' ').trim(),
    sort_order: parseInt(match[4], 10),
  });
}

console.log(`Found ${faqs.length} FAQs to export to SQL.`);

const sqlLines = [];
sqlLines.push('-- ==============================================================');
sqlLines.push('-- Category FAQs Database Seeder for Server / Production');
sqlLines.push('-- Generated: ' + new Date().toISOString());
sqlLines.push('-- Idempotent: Skips or updates existing question + category');
sqlLines.push('-- Run on Server:');
sqlLines.push('--   psql -U postgres -d casinolab -f prisma/seed-category-faqs.sql');
sqlLines.push('-- ==============================================================');
sqlLines.push('');
sqlLines.push('DO $$');
sqlLines.push('DECLARE');
sqlLines.push('  inserted_count INTEGER := 0;');
sqlLines.push('  updated_count INTEGER := 0;');
sqlLines.push('BEGIN');
sqlLines.push('');

for (const faq of faqs) {
  const safeQ = faq.question.replace(/'/g, "''");
  const safeA = faq.answer.replace(/'/g, "''");
  const safeCat = faq.category.replace(/'/g, "''");

  sqlLines.push(`  -- [${faq.category}] ${faq.question}`);
  sqlLines.push(`  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('${safeCat}') AND LOWER(question) = LOWER('${safeQ}')) THEN`);
  sqlLines.push(`    UPDATE "Faq"`);
  sqlLines.push(`    SET answer = '${safeA}', sort_order = ${faq.sort_order}, status = true, updated_at = NOW()`);
  sqlLines.push(`    WHERE LOWER(category) = LOWER('${safeCat}') AND LOWER(question) = LOWER('${safeQ}');`);
  sqlLines.push(`    updated_count := updated_count + 1;`);
  sqlLines.push(`  ELSE`);
  sqlLines.push(`    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)`);
  sqlLines.push(`    VALUES (gen_random_uuid(), '${safeQ}', '${safeA}', '${safeCat}', ${faq.sort_order}, true, NOW(), NOW());`);
  sqlLines.push(`    inserted_count := inserted_count + 1;`);
  sqlLines.push(`  END IF;`);
  sqlLines.push('');
}

sqlLines.push(`  RAISE NOTICE 'Seeded Category FAQs successfully: % inserted, % updated', inserted_count, updated_count;`);
sqlLines.push('END $$;');
sqlLines.push('');

const outputPath = path.join(__dirname, 'seed-category-faqs.sql');
fs.writeFileSync(outputPath, sqlLines.join('\n'), 'utf-8');
console.log(`Generated SQL file at: ${outputPath}`);
