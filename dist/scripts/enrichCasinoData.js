"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const prisma_1 = require("../prisma");
async function enrichCasinoData() {
    console.log('🚀 Enriching ybets-casino with bonuses, gaming tools, and pros/cons...');
    const ybets = await prisma_1.prisma.casino.findFirst({
        where: { slug: 'ybets-casino' },
    });
    if (!ybets) {
        console.error('Ybets casino not found!');
        return;
    }
    // 1. Update gaming tools on Ybets
    await prisma_1.prisma.casino.update({
        where: { id: ybets.id },
        data: {
            gaming_tools: [
                'Deposit Limit',
                'Loss Limit',
                'Wager / Bet Limit',
                'Session Time Limit / Reality Check',
                'Cool-Off / Time-Out Period',
                'Self-Exclusion',
                'Self-Assessment Test',
            ],
        },
    });
    // 2. Delete existing bonuses and re-seed with full rich data matching screenshot
    await prisma_1.prisma.casinoBonus.deleteMany({
        where: { casino_id: ybets.id },
    });
    await prisma_1.prisma.casinoBonus.createMany({
        data: [
            {
                casino_id: ybets.id,
                title: '200% up to $2,000 + 100 Free Spins, 1st Deposit Bonus',
                type: 'Welcome Bonus',
                amount: '$2,000',
                bonus_percentage: '200%',
                minimum_deposit: '$15',
                wagering_requirement: '30x(d+b)',
                bonus_code: 'YBET200',
                affiliate_url: 'https://ybets.net/?bonus=welcome-1st',
                terms_url: 'https://ybets.net/terms',
                sort_order: 1,
            },
            {
                casino_id: ybets.id,
                title: '100% up to $2,000 + 100 Free Spins, 2nd Deposit Bonus',
                type: 'Match Deposit Bonus',
                amount: '$2,000',
                bonus_percentage: '100%',
                minimum_deposit: '$15',
                wagering_requirement: '30x(d+b)',
                bonus_code: 'YBET100',
                affiliate_url: 'https://ybets.net/?bonus=welcome-2nd',
                terms_url: 'https://ybets.net/terms',
                sort_order: 2,
            },
            {
                casino_id: ybets.id,
                title: '75% up to $2,000 + 100 Free Spins, 3rd Deposit Bonus',
                type: 'Reload Bonus',
                amount: '$2,000',
                bonus_percentage: '75%',
                minimum_deposit: '$20',
                wagering_requirement: '30x(d+b)',
                bonus_code: 'RELOAD75',
                affiliate_url: 'https://ybets.net/?bonus=welcome-3rd',
                terms_url: 'https://ybets.net/terms',
                sort_order: 3,
            },
            {
                casino_id: ybets.id,
                title: '50% up to $1,500 High Roller Weekend Reload',
                type: 'High Roller Bonus',
                amount: '$1,500',
                bonus_percentage: '50%',
                minimum_deposit: '$50',
                wagering_requirement: '25x(d+b)',
                bonus_code: 'VIPWEEKEND',
                affiliate_url: 'https://ybets.net/?bonus=high-roller',
                terms_url: 'https://ybets.net/terms',
                sort_order: 4,
            },
            {
                casino_id: ybets.id,
                title: '10% Daily Crypto Cashback (Zero Wagering)',
                type: 'Cashback Bonus',
                amount: '10% Cashback',
                bonus_percentage: '10%',
                minimum_deposit: '$10',
                wagering_requirement: '0x (No Wagering)',
                bonus_code: 'CRYPTOBACK',
                affiliate_url: 'https://ybets.net/?bonus=daily-cashback',
                terms_url: 'https://ybets.net/terms',
                sort_order: 5,
            },
        ],
    });
    // 3. Ensure Pros & Cons exist
    const existingPros = await prisma_1.prisma.casinoPros.findMany({ where: { casino_id: ybets.id } });
    if (existingPros.length === 0) {
        await prisma_1.prisma.casinoPros.createMany({
            data: [
                { casino_id: ybets.id, content: '24/7 responsive live chat support with instant agent connection' },
                { casino_id: ybets.id, content: 'Accepts 15+ major cryptocurrencies and instant Web3 wallet deposits' },
                { casino_id: ybets.id, content: 'Massive 500% multi-stage welcome package for new signups' },
                { casino_id: ybets.id, content: 'Sleek, modern UI with rapid game loading and provably fair titles' },
            ],
        });
    }
    const existingCons = await prisma_1.prisma.casinoCons.findMany({ where: { casino_id: ybets.id } });
    if (existingCons.length === 0) {
        await prisma_1.prisma.casinoCons.createMany({
            data: [
                { casino_id: ybets.id, content: 'No dedicated native iOS or Android mobile application yet' },
                { casino_id: ybets.id, content: 'Limited selection of fiat-only local payment vouchers in some regions' },
            ],
        });
    }
    // 4. Also update other casinos with basic gaming tools if empty
    const otherCasinos = await prisma_1.prisma.casino.findMany({
        where: {
            id: { not: ybets.id },
            gaming_tools: { equals: [] },
        },
        take: 20,
    });
    for (const c of otherCasinos) {
        await prisma_1.prisma.casino.update({
            where: { id: c.id },
            data: {
                gaming_tools: [
                    'Deposit Limit',
                    'Loss Limit',
                    'Session Time Limit / Reality Check',
                    'Cool-Off / Time-Out Period',
                    'Self-Exclusion',
                ],
            },
        });
    }
    console.log(`✅ Successfully enriched ybets-casino and ${otherCasinos.length} other casinos!`);
}
enrichCasinoData()
    .catch((err) => {
    console.error('Error enriching casino data:', err);
    process.exit(1);
})
    .finally(async () => {
    await prisma_1.prisma.$disconnect();
});
//# sourceMappingURL=enrichCasinoData.js.map