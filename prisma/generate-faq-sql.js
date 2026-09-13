/**
 * Generates seed-casino-faqs.sql from mongo_casinos.json
 * Run: node prisma/generate-faq-sql.js > prisma/seed-casino-faqs.sql
 */

const casinos = require('../src/scripts/mongo_casinos.json');

function escape(str) {
  return str.replace(/'/g, "''");
}

function slug(name) {
  return name.toLowerCase()
    .replace(/[^a-z0-9\s-]/g, '')
    .replace(/\s+/g, '-')
    .replace(/-+/g, '-')
    .trim();
}

function getFaqs(name) {
  const n = escape(name);
  return [
    {
      q: `Is ${n} a legitimate and licensed online casino?`,
      a: `Yes, ${n} is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the ${n} website for the most up-to-date licensing details.`,
    },
    {
      q: `How do I create an account at ${n}?`,
      a: `Signing up at ${n} is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.`,
    },
    {
      q: `What welcome bonus does ${n} offer to new players?`,
      a: `${n} offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the ${n} promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.`,
    },
    {
      q: `What payment methods are accepted at ${n}?`,
      a: `${n} supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the ${n} cashier section for the full list of available options in your region.`,
    },
    {
      q: `How long do withdrawals take at ${n}?`,
      a: `Withdrawal times at ${n} depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24–48 hours. Credit/debit card withdrawals may take 3–5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that ${n} may require identity verification (KYC) before processing your first withdrawal, which could add additional time.`,
    },
    {
      q: `What games are available at ${n}?`,
      a: `${n} offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the ${n} platform to find your preferred titles quickly.`,
    },
  ];
}

const lines = [];
lines.push(`-- Casino FAQ Seeder`);
lines.push(`-- Generated from mongo_casinos.json`);
lines.push(`-- Inserts 6 FAQs per casino; skips casinos that already have FAQs`);
lines.push(`-- Run on server: psql -U postgres -d casinolab -f seed-casino-faqs.sql`);
lines.push(``);
lines.push(`DO $$`);
lines.push(`DECLARE`);
lines.push(`  casino_uuid UUID;`);
lines.push(`  existing_count INTEGER;`);
lines.push(`BEGIN`);

for (const casino of casinos) {
  const name = casino.name || 'Unknown Casino';
  const sl = slug(name);
  const faqs = getFaqs(name);

  lines.push(``);
  lines.push(`  -- ${name}`);
  lines.push(`  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '${escape(sl)}' LIMIT 1;`);
  lines.push(`  IF casino_uuid IS NOT NULL THEN`);
  lines.push(`    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;`);
  lines.push(`    IF existing_count < 6 THEN`);

  faqs.forEach((faq, i) => {
    lines.push(`      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = '${faq.q}') THEN`);
    lines.push(`        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)`);
    lines.push(`        VALUES (gen_random_uuid(), casino_uuid, '${faq.q}', '${faq.a}', ${i + 1});`);
    lines.push(`      END IF;`);
  });

  lines.push(`    END IF;`);
  lines.push(`  END IF;`);
}

lines.push(``);
lines.push(`  RAISE NOTICE 'FAQ seeding complete.';`);
lines.push(`END $$;`);

console.log(lines.join('\n'));
