import { Router } from 'express';
import {
  getGuides,
  getGuideCategories,
  getGuideBySlug,
  getGuideById,
  createGuide,
  updateGuide,
  deleteGuide,
} from '../controllers/guideController';

const router = Router();

router.get('/', getGuides);
router.get('/categories', getGuideCategories);
router.get('/slug/:slug', getGuideBySlug);
router.get('/:id', getGuideById);
router.post('/', createGuide);
router.put('/:id', updateGuide);
router.delete('/:id', deleteGuide);

export default router;
