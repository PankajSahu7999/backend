import { prisma } from '../prisma';

const BADGE_OPTIONS = [
  'Hot Offer',
  'Trending',
  'Exclusive',
  'Top Rated',
  'Popular',
  'Fast Payout',
  'New',
];

async function seedCasinoBadges() {
  console.log('🚀 Starting casino card badge seeder...');

  const casinos = await prisma.casino.findMany({
    select: { id: true, name: true, slug: true, card_badge: true, hot_casino: true },
  });

  console.log(`Found ${casinos.length} casinos in database.`);

  let updatedCount = 0;
  for (let i = 0; i < casinos.length; i++) {
    const casino = casinos[i];
    // Mix of badges: some Hot Offer, some Trending, Exclusive, Top Rated, Popular, etc.
    const randomBadge = BADGE_OPTIONS[i % BADGE_OPTIONS.length];

    await prisma.casino.update({
      where: { id: casino.id },
      data: {
        card_badge: randomBadge,
      },
    });
    updatedCount++;
  }

  console.log(`🎉 Successfully updated ${updatedCount} casinos with card badges.`);
}

seedCasinoBadges()
  .catch((e) => {
    console.error('Error seeding casino badges:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
