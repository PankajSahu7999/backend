import { Router } from 'express';
import {
  getGames,
  getGameBySlug,
  getGameById,
  createGame,
  updateGame,
  deleteGame,
  getRecommendedGames,
  seedGamesEndpoint,
} from '../controllers/gameController';

const router = Router();

// Seeder endpoint (for running seeder from admin UI or server curl)
router.post('/seed', seedGamesEndpoint);
router.get('/seed', seedGamesEndpoint);

// Recommended / grouped games for the hub page
router.get('/recommended', getRecommendedGames);

// Slug-based query (for marketing detail page)
router.get('/slug/:slug', getGameBySlug);

// Standard CRUD
router.get('/', getGames);
router.get('/:id', getGameById);
router.post('/', createGame);
router.put('/:id', updateGame);
router.delete('/:id', deleteGame);

export default router;
