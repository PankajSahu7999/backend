"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const bonusSectionController_1 = require("../controllers/bonusSectionController");
const router = (0, express_1.Router)();
// Public & Admin Routes
router.get('/', bonusSectionController_1.getBonusSections);
router.get('/slug/:slug', bonusSectionController_1.getBonusSectionBySlug);
router.get('/:id', bonusSectionController_1.getBonusSectionById);
router.post('/', bonusSectionController_1.createBonusSection);
router.put('/:id', bonusSectionController_1.updateBonusSection);
router.delete('/:id', bonusSectionController_1.deleteBonusSection);
exports.default = router;
//# sourceMappingURL=bonusSectionRoutes.js.map