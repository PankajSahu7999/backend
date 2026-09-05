import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

const SAMPLE_BONUS_SECTIONS = [
  {
    title: 'Exclusive Welcome Packages',
    slug: 'welcome-packages',
    badge_text: 'Most Popular',
    icon_name: 'Gift',
    description:
      'Boost your bankroll right from the start. Claim match bonuses up to 500% plus hundreds of free spins on your initial deposits.',
    sort_order: 1,
    offers: [
      {
        custom_title: '250% Match Bonus up to $2,500 + 150 Free Spins',
        bonus_code: 'WELCOME250',
        wagering_requirement: '30x Bonus',
        min_deposit: '$20',
        exclusive: true,
        highlight_badge: 'Exclusive Deal',
      },
      {
        custom_title: '100% Deposit Match up to $1,000 + 50 Zero-Wager Spins',
        bonus_code: 'LAB1000',
        wagering_requirement: '25x (Bonus + Deposit)',
        min_deposit: '$10',
        exclusive: true,
        highlight_badge: 'Zero Wager Spins',
      },
      {
        custom_title: '300% High-Roller Welcome Package up to $5,000',
        bonus_code: 'HIGHROLLER300',
        wagering_requirement: '35x Bonus',
        min_deposit: '$100',
        exclusive: false,
        highlight_badge: 'High Roller Special',
      },
    ],
  },
  {
    title: 'No Deposit & Free Spins Bonuses',
    slug: 'no-deposit-free-spins',
    badge_text: 'Zero Risk',
    icon_name: 'Sparkles',
    description:
      'Test top online slots completely free without risking your own money. Sign up, verify your account, and start spinning immediately.',
    sort_order: 2,
    offers: [
      {
        custom_title: '50 Free Spins on Starburst (No Deposit Required)',
        bonus_code: 'STAR50FREE',
        wagering_requirement: '40x Winnings',
        min_deposit: '$0',
        exclusive: true,
        highlight_badge: 'No Deposit Required',
      },
      {
        custom_title: '$25 Free Chip on Registration + 20 Spins',
        bonus_code: 'CHIP25FREE',
        wagering_requirement: '30x',
        min_deposit: '$0',
        exclusive: true,
        highlight_badge: 'Free Cash',
      },
      {
        custom_title: '100 Free Spins on Book of Dead with $10 First Deposit',
        bonus_code: 'DEAD100',
        wagering_requirement: '20x Winnings',
        min_deposit: '$10',
        exclusive: false,
        highlight_badge: 'Low Wagering',
      },
    ],
  },
  {
    title: 'Crypto & Bitcoin Deposit Bonuses',
    slug: 'crypto-bonuses',
    badge_text: 'Instant Payouts',
    icon_name: 'Coins',
    description:
      'Get massive crypto match percentages with BTC, ETH, USDT, LTC, and more. Enjoy instant withdrawals and anonymous gameplay.',
    sort_order: 3,
    offers: [
      {
        custom_title: '5 BTC Welcome Package + 200 Free Spins (4 Deposits)',
        bonus_code: 'CRYPTO5BTC',
        wagering_requirement: '35x Bonus',
        min_deposit: '0.001 BTC',
        exclusive: true,
        highlight_badge: 'Huge Bitcoin Bonus',
      },
      {
        custom_title: '150% Crypto Match up to $3,000 in USDT / ETH',
        bonus_code: 'USDT150',
        wagering_requirement: '30x',
        min_deposit: '$25 (Crypto)',
        exclusive: false,
        highlight_badge: 'Instant Crypto Cashout',
      },
    ],
  },
  {
    title: 'Weekly Cashback & Reload Deals',
    slug: 'cashback-reload-bonuses',
    badge_text: 'Loss Protection',
    icon_name: 'Percent',
    description:
      'Recover up to 25% of your weekly net losses as real, wager-free cash. Plus weekly reload deposit matches every Friday & weekend.',
    sort_order: 4,
    offers: [
      {
        custom_title: '20% Weekly Cashback on Net Losses (No Wagering)',
        bonus_code: 'CASHBACK20',
        wagering_requirement: '1x / Real Cash',
        min_deposit: '$20',
        exclusive: true,
        highlight_badge: 'Wager-Free Cash',
      },
      {
        custom_title: '75% Weekend Reload Match up to $750 every Saturday',
        bonus_code: 'RELOAD75',
        wagering_requirement: '30x Bonus',
        min_deposit: '$30',
        exclusive: false,
        highlight_badge: 'Every Weekend',
      },
    ],
  },
  {
    title: 'VIP & High Roller Club Bonuses',
    slug: 'vip-high-roller-bonuses',
    badge_text: 'VIP Only',
    icon_name: 'Flame',
    description:
      'Exclusive high-stakes bonuses with personal VIP account managers, higher betting limits, tailored cashback, and expedited limits.',
    sort_order: 5,
    offers: [
      {
        custom_title: 'VIP 200% Match up to $10,000 + Dedicated Manager',
        bonus_code: 'VIP10K',
        wagering_requirement: '25x Bonus',
        min_deposit: '$500',
        exclusive: true,
        highlight_badge: 'VIP Elite Offer',
      },
      {
        custom_title: 'High Roller $5,000 Live Dealer Bonus + 15% Cashback',
        bonus_code: 'LIVEDEALER5K',
        wagering_requirement: '30x',
        min_deposit: '$250',
        exclusive: false,
        highlight_badge: 'Live Tables Valid',
      },
    ],
  },
];

async function seedBonusSections() {
  console.log('Seeding bonus sections...');

  // Get available casinos to assign
  const casinos = await prisma.casino.findMany({
    take: 15,
    orderBy: { rating: 'desc' },
  });

  if (casinos.length === 0) {
    console.log('No casinos found in database to attach bonus sections.');
    return;
  }

  for (const sectionData of SAMPLE_BONUS_SECTIONS) {
    const existing = await (prisma as any).bonusSection.findUnique({
      where: { slug: sectionData.slug },
    });

    if (existing) {
      console.log(`Bonus section "${sectionData.title}" already exists, skipping.`);
      continue;
    }

    const createdSection = await (prisma as any).bonusSection.create({
      data: {
        title: sectionData.title,
        slug: sectionData.slug,
        badge_text: sectionData.badge_text,
        description: sectionData.description,
        icon_name: sectionData.icon_name,
        sort_order: sectionData.sort_order,
        status: 'active',
      },
    });

    console.log(`Created section: ${createdSection.title}`);

    // Attach offers with available casinos
    for (let i = 0; i < sectionData.offers.length; i++) {
      const offer = sectionData.offers[i];
      const casino = casinos[i % casinos.length];

      await (prisma as any).bonusSectionItem.create({
        data: {
          section_id: createdSection.id,
          casino_id: casino.id,
          custom_title: offer.custom_title,
          bonus_code: offer.bonus_code,
          wagering_requirement: offer.wagering_requirement,
          min_deposit: offer.min_deposit,
          exclusive: offer.exclusive,
          highlight_badge: offer.highlight_badge,
          sort_order: i,
        },
      });
    }
  }

  console.log('Bonus sections seeding completed successfully!');
}

seedBonusSections()
  .catch((e) => {
    console.error('Error seeding bonus sections:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
