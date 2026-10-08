import { PrismaClient } from '@prisma/client';
import * as fs from 'fs';
import * as path from 'path';

const prisma = new PrismaClient();

function escapeSql(str: string | null | undefined): string {
  if (str === null || str === undefined) return 'NULL';
  return `'${str.replace(/'/g, "''")}'`;
}

async function generate() {
  const newsList = await prisma.news.findMany({
    orderBy: { sort_order: 'asc' }
  });

  console.log(`Fetched ${newsList.length} news items from database.`);

  const lines: string[] = [
    '-- ==============================================================',
    '-- Top 50 Latest News Database Seeder for Server / Production',
    `-- Generated: ${new Date().toISOString()}`,
    '-- Idempotent: Upserts based on unique slug',
    '-- Run on Server:',
    '--   psql -U postgres -d casinolab -f prisma/seed-news.sql',
    '-- ==============================================================',
    '',
    'DO $$',
    'DECLARE',
    '  v_author_id UUID;',
    '  inserted_count INTEGER := 0;',
    '  updated_count INTEGER := 0;',
    'BEGIN',
    '  -- Pick an existing active user/admin as author if available',
    '  SELECT id INTO v_author_id FROM "User" LIMIT 1;',
    ''
  ];

  for (const item of newsList) {
    const titleEsc = escapeSql(item.title);
    const slugEsc = escapeSql(item.slug);
    const imgEsc = escapeSql(item.featured_image);
    const contentEsc = escapeSql(item.content);
    const metaTitleEsc = escapeSql(item.meta_title);
    const metaDescEsc = escapeSql(item.meta_description);
    const statusEsc = escapeSql(item.status || 'published');
    const pubDateEsc = item.published_at ? escapeSql(item.published_at.toISOString()) : 'NOW()';
    const sortOrder = item.sort_order ?? 0;

    lines.push(`  -- News #${sortOrder}: ${(item.title || '').replace(/\r?\n/g, ' ')}`);
    lines.push(`  IF EXISTS (SELECT 1 FROM "News" WHERE slug = ${slugEsc}) THEN`);
    lines.push(`    UPDATE "News" SET`);
    lines.push(`      title = ${titleEsc},`);
    lines.push(`      featured_image = ${imgEsc},`);
    lines.push(`      content = ${contentEsc},`);
    lines.push(`      meta_title = ${metaTitleEsc},`);
    lines.push(`      meta_description = ${metaDescEsc},`);
    lines.push(`      status = ${statusEsc},`);
    lines.push(`      sort_order = ${sortOrder},`);
    lines.push(`      updated_at = NOW()`);
    lines.push(`    WHERE slug = ${slugEsc};`);
    lines.push(`    updated_count := updated_count + 1;`);
    lines.push(`  ELSE`);
    lines.push(`    INSERT INTO "News" (`);
    lines.push(`      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at`);
    lines.push(`    ) VALUES (`);
    lines.push(`      gen_random_uuid(), v_author_id, ${titleEsc}, ${slugEsc}, ${imgEsc}, ${contentEsc}, ${metaTitleEsc}, ${metaDescEsc}, ${statusEsc}, ${sortOrder}, ${pubDateEsc}::timestamptz, NOW(), NOW()`);
    lines.push(`    );`);
    lines.push(`    inserted_count := inserted_count + 1;`);
    lines.push(`  END IF;`);
    lines.push('');
  }

  lines.push('  RAISE NOTICE \'News seeding completed: % inserted, % updated.\', inserted_count, updated_count;');
  lines.push('END $$;');
  lines.push('');

  const sqlPath = path.join(__dirname, '../../prisma/seed-news.sql');
  fs.writeFileSync(sqlPath, lines.join('\n'), 'utf8');
  console.log(`Successfully generated SQL seeder at: ${sqlPath}`);
}

generate()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
