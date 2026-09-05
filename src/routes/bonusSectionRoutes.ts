import { Router } from 'express';
import {
  getBonusSections,
  getBonusSectionBySlug,
  getBonusSectionById,
  createBonusSection,
  updateBonusSection,
  deleteBonusSection,
} from '../controllers/bonusSectionController';

const router = Router();

// Public & Admin Routes
router.get('/', getBonusSections);
router.get('/slug/:slug', getBonusSectionBySlug);
router.get('/:id', getBonusSectionById);
router.post('/', createBonusSection);
router.put('/:id', updateBonusSection);
router.delete('/:id', deleteBonusSection);

export default router;
