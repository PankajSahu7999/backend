"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const guideController_1 = require("../controllers/guideController");
const router = (0, express_1.Router)();
router.get('/', guideController_1.getGuides);
router.get('/categories', guideController_1.getGuideCategories);
router.get('/slug/:slug', guideController_1.getGuideBySlug);
router.get('/:id', guideController_1.getGuideById);
router.post('/', guideController_1.createGuide);
router.put('/:id', guideController_1.updateGuide);
router.delete('/:id', guideController_1.deleteGuide);
exports.default = router;
//# sourceMappingURL=guideRoutes.js.map