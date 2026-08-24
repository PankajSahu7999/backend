"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const casinoAffiliateLinkController_1 = require("../controllers/casinoAffiliateLinkController");
const router = express_1.default.Router();
// Admin routes
router.get('/casino/:casinoId', casinoAffiliateLinkController_1.getCasinoAffiliateLinks);
router.post('/', casinoAffiliateLinkController_1.createCasinoAffiliateLink);
router.put('/:id', casinoAffiliateLinkController_1.updateCasinoAffiliateLink);
router.delete('/:id', casinoAffiliateLinkController_1.deleteCasinoAffiliateLink);
// Public route for frontend
router.get('/casino/:casinoId/country/:countryCode', casinoAffiliateLinkController_1.getAffiliateLinkByCountry);
exports.default = router;
//# sourceMappingURL=casinoAffiliateLinkRoutes.js.map