"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const prisma_1 = require("../prisma");
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
    const casinos = await prisma_1.prisma.casino.findMany({
        select: { id: true, name: true, slug: true, card_badge: true, hot_casino: true },
    });
    console.log(`Found ${casinos.length} casinos in database.`);
    let updatedCount = 0;
    for (let i = 0; i < casinos.length; i++) {
        const casino = casinos[i];
        // Mix of badges: some Hot Offer, some Trending, Exclusive, Top Rated, Popular, etc.
        const randomBadge = BADGE_OPTIONS[i % BADGE_OPTIONS.length];
        await prisma_1.prisma.casino.update({
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
    await prisma_1.prisma.$disconnect();
});
//# sourceMappingURL=seedCasinoBadges.js.map