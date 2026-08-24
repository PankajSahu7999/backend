"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const hasOffersPostbackController_1 = require("../controllers/hasOffersPostbackController");
const router = (0, express_1.Router)();
/**
 * @route   POST /api/hasoffers/postback
 * @desc    Handle incoming HasOffers postback requests
 * @access  Public (called by HasOffers networks)
 */
router.post('/postback', hasOffersPostbackController_1.handlePostback);
/**
 * @route   GET /api/hasoffers/postback
 * @desc    Handle incoming HasOffers postback requests (GET method support)
 * @access  Public (called by HasOffers networks)
 */
router.get('/postback', hasOffersPostbackController_1.handlePostback);
/**
 * @route   POST /api/hasoffers/click
 * @desc    Generate a tracking click with HasOffers parameters
 * @access  Private
 */
router.post('/click', hasOffersPostbackController_1.generateTrackingClick);
/**
 * @route   GET /api/hasoffers/conversions/:casinoId
 * @desc    Get conversions for a specific casino
 * @access  Private
 */
router.get('/conversions/:casinoId', hasOffersPostbackController_1.getCasinoConversions);
/**
 * @route   GET /api/hasoffers/analytics/:casinoId
 * @desc    Get conversion analytics for a specific casino
 * @access  Private
 */
router.get('/analytics/:casinoId', hasOffersPostbackController_1.getConversionAnalytics);
exports.default = router;
//# sourceMappingURL=hasOffersPostbackRoutes.js.map