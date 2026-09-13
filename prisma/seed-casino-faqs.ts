import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

// ---------------------------------------------------------------------------
// Generic FAQ templates (6 per casino) – dynamically filled with casino name
// ---------------------------------------------------------------------------
function getFaqsForCasino(name: string, slug: string): { question: string; answer: string; sort_order: number }[] {
  const n = name; // short alias

  return [
    {
      question: `Is ${n} a legitimate and licensed online casino?`,
      answer: `Yes, ${n} is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the ${n} website for the most up-to-date licensing details.`,
      sort_order: 1,
    },
    {
      question: `How do I create an account at ${n}?`,
      answer: `Signing up at ${n} is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.`,
      sort_order: 2,
    },
    {
      question: `What welcome bonus does ${n} offer to new players?`,
      answer: `${n} offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the ${n} promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.`,
      sort_order: 3,
    },
    {
      question: `What payment methods are accepted at ${n}?`,
      answer: `${n} supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the ${n} cashier section for the full list of available options in your region.`,
      sort_order: 4,
    },
    {
      question: `How long do withdrawals take at ${n}?`,
      answer: `Withdrawal times at ${n} depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24–48 hours. Credit/debit card withdrawals may take 3–5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that ${n} may require identity verification (KYC) before processing your first withdrawal, which could add additional time.`,
      sort_order: 5,
    },
    {
      question: `What games are available at ${n}?`,
      answer: `${n} offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the ${n} platform to find your preferred titles quickly.`,
      sort_order: 6,
    },
  ];
}

// ---------------------------------------------------------------------------
// Main seeder
// ---------------------------------------------------------------------------
async function main() {
  console.log('🎰 Starting FAQ seeder...\n');

  // Fetch all casinos
  const casinos = await prisma.casino.findMany({
    select: { id: true, name: true, slug: true },
    orderBy: { name: 'asc' },
  });

  console.log(`Found ${casinos.length} casinos. Seeding 6 FAQs each...\n`);

  let totalCreated = 0;
  let totalSkipped = 0;

  for (const casino of casinos) {
    const casinoName = casino.name ?? 'this casino';
    const casinoSlug = casino.slug ?? '';

    // Check if this casino already has FAQs
    const existingCount = await prisma.casinoFaq.count({
      where: { casino_id: casino.id },
    });

    if (existingCount >= 6) {
      console.log(`  ⏭  ${casinoName} — already has ${existingCount} FAQs, skipping.`);
      totalSkipped++;
      continue;
    }

    const faqs = getFaqsForCasino(casinoName, casinoSlug);

    // Only insert FAQs that don't exist yet (match by question text)
    for (const faq of faqs) {
      const exists = await prisma.casinoFaq.findFirst({
        where: {
          casino_id: casino.id,
          question: faq.question,
        },
      });

      if (!exists) {
        await prisma.casinoFaq.create({
          data: {
            casino_id: casino.id,
            question: faq.question,
            answer: faq.answer,
            sort_order: faq.sort_order,
          },
        });
        totalCreated++;
      }
    }

    console.log(`  ✅ ${casinoName} — 6 FAQs seeded.`);
  }

  console.log(`\n✅ Done! Created ${totalCreated} FAQs, skipped ${totalSkipped} casinos (already had FAQs).`);
}

main()
  .catch((error) => {
    console.error('❌ Seeder failed:', error);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
