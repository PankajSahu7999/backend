import { Router } from 'express';
import { loginAdmin, getMe } from '../controllers/authController';

const router = Router();

router.post('/login', loginAdmin);
router.get('/me', getMe);

export default router;
