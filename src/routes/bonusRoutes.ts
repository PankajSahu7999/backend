import { Router } from 'express';
import {
  getBonuses,
  getBonusById,
  createBonus,
  updateBonus,
  deleteBonus,
} from '../controllers/bonusController';

const router = Router();

router.get('/', getBonuses);
router.get('/:id', getBonusById);
router.post('/', createBonus);
router.put('/:id', updateBonus);
router.delete('/:id', deleteBonus);

export default router;
