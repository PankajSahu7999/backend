"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const client_1 = require("@prisma/client");
const prisma = new client_1.PrismaClient();
const SECTIONS_TO_SEED = [
    // CASINOS HUB
    {
        title: 'Top Rated Online Casinos',
        slug: 'top-rated-online-casinos',
        badge_text: 'Editor Choice',
        icon_name: 'Trophy',
        section_type: 'casino',
        description: 'Our highest-scoring online casinos thoroughly audited for player security, game fairness, fast payouts, and customer support excellence.',
        sort_order: 1,
        offers: [
            {
                custom_title: 'Premier Licensed Casino with 5,000+ Games',
                bonus_code: 'TOPCASINO100',
                wagering_requirement: '30x',
                min_deposit: '$20',
                exclusive: true,
                highlight_badge: 'Highest Rated',
            },
            {
                custom_title: 'Award-Winning VIP Casino & Instant Cashouts',
                bonus_code: 'VIPCLUB',
                wagering_requirement: '25x',
                min_deposit: '$15',
                exclusive: true,
                highlight_badge: 'VIP Club',
            },
        ],
    },
    {
        title: 'Fast Withdrawal & Instant Payout Casinos',
        slug: 'fast-withdrawal-casinos',
        badge_text: 'Under 1 Hour',
        icon_name: 'Flame',
        section_type: 'casino',
        description: 'Get your winnings without delay. These verified casinos support instant e-wallets, crypto payments, and same-day bank transfers.',
        sort_order: 2,
        offers: [
            {
                custom_title: 'Instant Crypto & E-Wallet Withdrawals in Minutes',
                bonus_code: 'FASTPAY',
                wagering_requirement: '30x',
                min_deposit: '$10',
                exclusive: true,
                highlight_badge: 'Instant Payout',
            },
            {
                custom_title: 'Zero Payout Fees & Verified 15-Minute Cashouts',
                bonus_code: 'ZEROFEE',
                wagering_requirement: '35x',
                min_deposit: '$20',
                exclusive: false,
                highlight_badge: 'Zero Fees',
            },
        ],
    },
    {
        title: 'Crypto & Bitcoin Friendly Casinos',
        slug: 'crypto-bitcoin-casinos',
        badge_text: 'Web3 Gaming',
        icon_name: 'Coins',
        section_type: 'casino',
        description: 'Gamble anonymously with BTC, ETH, USDT, and SOL with low blockchain fees and provably fair games.',
        sort_order: 3,
        offers: [
            {
                custom_title: '100% Crypto Bonus up to 1 BTC + Provably Fair Games',
                bonus_code: 'CRYPTO100',
                wagering_requirement: '30x',
                min_deposit: '0.0005 BTC',
                exclusive: true,
                highlight_badge: 'Crypto Exclusive',
            },
        ],
    },
    // GAMES HUB
    {
        title: 'Top Live Dealer & Table Game Casinos',
        slug: 'best-live-dealer-casinos',
        badge_text: 'Real Dealers',
        icon_name: 'Trophy',
        section_type: 'game',
        description: 'Immerse yourself in authentic live dealer roulette, blackjack, baccarat, and game shows streamed in HD from world-class studios.',
        sort_order: 1,
        offers: [
            {
                custom_title: 'Live Roulette & Blackjack Suite by Evolution & Pragmatic',
                bonus_code: 'LIVEDEALER',
                wagering_requirement: '35x',
                min_deposit: '$20',
                exclusive: true,
                highlight_badge: 'Evolution Suite',
            },
            {
                custom_title: 'High-Stakes VIP Tables & Dedicated Game Shows',
                bonus_code: 'VIPGAMES',
                wagering_requirement: '30x',
                min_deposit: '$50',
                exclusive: false,
                highlight_badge: 'VIP Tables',
            },
        ],
    },
    {
        title: 'Classic Table Games & Strategy Hub',
        slug: 'classic-table-games',
        badge_text: 'High RTP',
        icon_name: 'Sparkles',
        section_type: 'game',
        description: 'Master European Roulette, Single-Deck Blackjack, Craps, and Baccarat with the lowest house edge available online.',
        sort_order: 2,
        offers: [
            {
                custom_title: 'Single Deck Blackjack with 99.6% RTP + Table Cashback',
                bonus_code: 'CLASSIC99',
                wagering_requirement: '20x',
                min_deposit: '$15',
                exclusive: true,
                highlight_badge: '99.6% RTP',
            },
        ],
    },
    // SLOTS HUB
    {
        title: 'High RTP & Best Video Slots Casinos',
        slug: 'high-rtp-video-slots',
        badge_text: '97%+ RTP',
        icon_name: 'Flame',
        section_type: 'slot',
        description: 'Spin top video slots with proven return-to-player rates over 97%, bonus buy features, and cutting-edge visual mechanics.',
        sort_order: 1,
        offers: [
            {
                custom_title: '300 Free Spins on Top 97%+ RTP Slots',
                bonus_code: 'SPINS300',
                wagering_requirement: '30x',
                min_deposit: '$20',
                exclusive: true,
                highlight_badge: '300 Free Spins',
            },
            {
                custom_title: 'Buy-Bonus Slots Collection + 100% Match Bonus',
                bonus_code: 'SLOTBUY',
                wagering_requirement: '35x',
                min_deposit: '$10',
                exclusive: false,
                highlight_badge: 'Feature Drop',
            },
        ],
    },
    {
        title: 'Progressive Jackpot & Megaways Casinos',
        slug: 'progressive-jackpot-megaways',
        badge_text: 'Mega Jackpots',
        icon_name: 'Sparkles',
        section_type: 'slot',
        description: 'Play for life-changing multi-million dollar jackpots including Mega Moolah, WowPot, and thousands of Megaways paylines.',
        sort_order: 2,
        offers: [
            {
                custom_title: 'Mega Jackpot Quest: 100 Free Chances on Millionaire Reels',
                bonus_code: 'JACKPOT100',
                wagering_requirement: '35x',
                min_deposit: '$10',
                exclusive: true,
                highlight_badge: 'Multi-Million Drops',
            },
        ],
    },
    // BETTING HUB
    {
        title: 'Top Regulated Sportsbooks & Betting Sites',
        slug: 'top-sports-betting-sites',
        badge_text: 'Best Odds',
        icon_name: 'Trophy',
        section_type: 'betting',
        description: 'Bet on Football, Basketball, Tennis, Esports, and 40+ global sports with competitive odds and licensed security.',
        sort_order: 1,
        offers: [
            {
                custom_title: '100% Sports Welcome Bonus up to $500 + $25 Free Bet',
                bonus_code: 'SPORTS500',
                wagering_requirement: '5x Odds 1.50+',
                min_deposit: '$15',
                exclusive: true,
                highlight_badge: 'Free Bet Included',
            },
            {
                custom_title: 'Enhanced Odds Daily & Acca Insurance Protection',
                bonus_code: 'BOOSTODDS',
                wagering_requirement: '6x Odds 1.60+',
                min_deposit: '$20',
                exclusive: false,
                highlight_badge: 'Daily Odds Boost',
            },
        ],
    },
    {
        title: 'Live In-Play Betting & Cash Out',
        slug: 'live-in-play-betting',
        badge_text: 'Live Streaming',
        icon_name: 'Flame',
        section_type: 'betting',
        description: 'Real-time in-game betting with fast cash-out, instant bet settlement, and live event stats.',
        sort_order: 2,
        offers: [
            {
                custom_title: 'Full & Partial Cash-Out + Live Match Streaming',
                bonus_code: 'LIVEBET',
                wagering_requirement: '5x',
                min_deposit: '$10',
                exclusive: true,
                highlight_badge: 'Live Stream Hub',
            },
        ],
    },
];
async function seedAllSections() {
    console.log('Seeding Multi-Category Hub Sections...');
    const casinos = await prisma.casino.findMany({
        take: 10,
        orderBy: { rating: 'desc' },
    });
    if (casinos.length === 0) {
        console.log('No casinos found to attach offers to.');
        return;
    }
    for (const s of SECTIONS_TO_SEED) {
        const existing = await prisma.bonusSection.findUnique({
            where: { slug: s.slug },
        });
        if (existing) {
            // Update section_type if it was not set
            await prisma.bonusSection.update({
                where: { id: existing.id },
                data: { section_type: s.section_type },
            });
            console.log(`Updated section_type for existing section: ${s.title}`);
            continue;
        }
        const created = await prisma.bonusSection.create({
            data: {
                title: s.title,
                slug: s.slug,
                badge_text: s.badge_text,
                description: s.description,
                icon_name: s.icon_name,
                sort_order: s.sort_order,
                status: 'active',
                section_type: s.section_type,
            },
        });
        console.log(`Created section: ${created.title} (${s.section_type})`);
        for (let i = 0; i < s.offers.length; i++) {
            const offer = s.offers[i];
            const casino = casinos[i % casinos.length];
            await prisma.bonusSectionItem.create({
                data: {
                    section_id: created.id,
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
    console.log('Finished seeding all hub sections!');
}
seedAllSections()
    .catch((e) => {
    console.error(e);
    process.exit(1);
})
    .finally(async () => {
    await prisma.$disconnect();
});
//# sourceMappingURL=seedAllSections.js.map