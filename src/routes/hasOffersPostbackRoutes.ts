import { Router } from 'express';
import {
  handlePostback,
  generateTrackingClick,
  getCasinoConversions,
  getConversionAnalytics
} from '../controllers/hasOffersPostbackController';

const router = Router();

/**
 * @route   POST /api/hasoffers/postback
 * @desc    Handle incoming HasOffers postback requests
 * @access  Public (called by HasOffers networks)
 */
router.post('/postback', handlePostback);

/**
 * @route   GET /api/hasoffers/postback
 * @desc    Handle incoming HasOffers postback requests (GET method support)
 * @access  Public (called by HasOffers networks)
 */
router.get('/postback', handlePostback);

/**
 * @route   POST /api/hasoffers/click
 * @desc    Generate a tracking click with HasOffers parameters
 * @access  Private
 */
router.post('/click', generateTrackingClick);

/**
 * @route   GET /api/hasoffers/conversions/:casinoId
 * @desc    Get conversions for a specific casino
 * @access  Private
 */
router.get('/conversions/:casinoId', getCasinoConversions);

/**
 * @route   GET /api/hasoffers/analytics/:casinoId
 * @desc    Get conversion analytics for a specific casino
 * @access  Private
 */
router.get('/analytics/:casinoId', getConversionAnalytics);

export default router;