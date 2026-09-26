"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.seedAll = seedAll;
const prisma_1 = require("../prisma");
const seedGames_1 = require("./seedGames");
async function seedAll() {
    console.log('🌟 ================================================= 🌟');
    console.log('🚀 Starting Full Server Database Seeder...');
    console.log('🌟 ================================================= 🌟\n');
    try {
        // 1. Seed Casino Games
        console.log('👉 [1/1] Seeding Casino Games...');
        const gamesResult = await (0, seedGames_1.seedGames)();
        console.log(`✅ Seeded ${gamesResult.count} games successfully!\n`);
        console.log('🎉 ================================================= 🎉');
        console.log('✅ ALL SERVER SEEDERS COMPLETED SUCCESSFULLY!');
        console.log('🎉 ================================================= 🎉');
    }
    catch (error) {
        console.error('❌ Error during server seeding:', error);
        throw error;
    }
    finally {
        await prisma_1.prisma.$disconnect();
    }
}
if (require.main === module) {
    seedAll()
        .then(() => process.exit(0))
        .catch(() => process.exit(1));
}
//# sourceMappingURL=seedAll.js.map