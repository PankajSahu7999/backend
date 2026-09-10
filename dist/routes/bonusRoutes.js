"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const bonusController_1 = require("../controllers/bonusController");
const router = (0, express_1.Router)();
router.get('/', bonusController_1.getBonuses);
router.get('/:id', bonusController_1.getBonusById);
router.post('/', bonusController_1.createBonus);
router.put('/:id', bonusController_1.updateBonus);
router.delete('/:id', bonusController_1.deleteBonus);
exports.default = router;
//# sourceMappingURL=bonusRoutes.js.map