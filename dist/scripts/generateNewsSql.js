"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
const client_1 = require("@prisma/client");
const fs = __importStar(require("fs"));
const path = __importStar(require("path"));
const prisma = new client_1.PrismaClient();
function escapeSql(str) {
    if (str === null || str === undefined)
        return 'NULL';
    return `'${str.replace(/'/g, "''")}'`;
}
async function generate() {
    const newsList = await prisma.news.findMany({
        orderBy: { sort_order: 'asc' }
    });
    console.log(`Fetched ${newsList.length} news items from database.`);
    const lines = [
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
//# sourceMappingURL=generateNewsSql.js.map