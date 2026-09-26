import { prisma } from '../prisma';
import { seedGames } from './seedGames';

async function seedAll() {
  console.log('🌟 ================================================= 🌟');
  console.log('🚀 Starting Full Server Database Seeder...');
  console.log('🌟 ================================================= 🌟\n');

  try {
    // 1. Seed Casino Games
    console.log('👉 [1/1] Seeding Casino Games...');
    const gamesResult = await seedGames();
    console.log(`✅ Seeded ${gamesResult.count} games successfully!\n`);

    console.log('🎉 ================================================= 🎉');
    console.log('✅ ALL SERVER SEEDERS COMPLETED SUCCESSFULLY!');
    console.log('🎉 ================================================= 🎉');
  } catch (error) {
    console.error('❌ Error during server seeding:', error);
    throw error;
  } finally {
    await prisma.$disconnect();
  }
}

if (require.main === module) {
  seedAll()
    .then(() => process.exit(0))
    .catch(() => process.exit(1));
}

export { seedAll };
