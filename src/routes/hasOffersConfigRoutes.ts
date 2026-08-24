import { Router } from 'express';
import {
  getHasOffersConfigs,
  getHasOffersConfig,
  createHasOffersConfig,
  updateHasOffersConfig,
  deleteHasOffersConfig,
  getConfigByCasino
} from '../controllers/hasOffersConfigController';

const router = Router();

/**
 * @route   GET /api/hasoffers/configs
 * @desc    Get all HasOffers postback configurations
 * @access  Private
 */
router.get('/configs', getHasOffersConfigs);

/**
 * @route   POST /api/hasoffers/configs
 * @desc    Create a new HasOffers postback configuration
 * @access  Private
 */
router.post('/configs', createHasOffersConfig);

/**
 * @route   GET /api/hasoffers/configs/:id
 * @desc    Get a single HasOffers postback configuration
 * @access  Private
 */
router.get('/configs/:id', getHasOffersConfig);

/**
 * @route   PUT /api/hasoffers/configs/:id
 * @desc    Update a HasOffers postback configuration
 * @access  Private
 */
router.put('/configs/:id', updateHasOffersConfig);

/**
 * @route   DELETE /api/hasoffers/configs/:id
 * @desc    Delete a HasOffers postback configuration
 * @access  Private
 */
router.delete('/configs/:id', deleteHasOffersConfig);

/**
 * @route   GET /api/hasoffers/casino/:casinoId/configs
 * @desc    Get HasOffers configurations for a specific casino
 * @access  Private
 */
router.get('/casino/:casinoId/configs', getConfigByCasino);

export default router;