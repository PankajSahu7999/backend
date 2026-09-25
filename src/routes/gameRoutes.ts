import { Router } from 'express';
import {
  getGames,
  getGameBySlug,
  getGameById,
  createGame,
  updateGame,
  deleteGame,
  getRecommendedGames,
} from '../controllers/gameController';

const router = Router();

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
