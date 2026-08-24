"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const hasOffersConfigController_1 = require("../controllers/hasOffersConfigController");
const router = (0, express_1.Router)();
/**
 * @route   GET /api/hasoffers/configs
 * @desc    Get all HasOffers postback configurations
 * @access  Private
 */
router.get('/configs', hasOffersConfigController_1.getHasOffersConfigs);
/**
 * @route   POST /api/hasoffers/configs
 * @desc    Create a new HasOffers postback configuration
 * @access  Private
 */
router.post('/configs', hasOffersConfigController_1.createHasOffersConfig);
/**
 * @route   GET /api/hasoffers/configs/:id
 * @desc    Get a single HasOffers postback configuration
 * @access  Private
 */
router.get('/configs/:id', hasOffersConfigController_1.getHasOffersConfig);
/**
 * @route   PUT /api/hasoffers/configs/:id
 * @desc    Update a HasOffers postback configuration
 * @access  Private
 */
router.put('/configs/:id', hasOffersConfigController_1.updateHasOffersConfig);
/**
 * @route   DELETE /api/hasoffers/configs/:id
 * @desc    Delete a HasOffers postback configuration
 * @access  Private
 */
router.delete('/configs/:id', hasOffersConfigController_1.deleteHasOffersConfig);
/**
 * @route   GET /api/hasoffers/casino/:casinoId/configs
 * @desc    Get HasOffers configurations for a specific casino
 * @access  Private
 */
router.get('/casino/:casinoId/configs', hasOffersConfigController_1.getConfigByCasino);
exports.default = router;
//# sourceMappingURL=hasOffersConfigRoutes.js.map