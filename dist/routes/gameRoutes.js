"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const gameController_1 = require("../controllers/gameController");
const router = (0, express_1.Router)();
// Recommended / grouped games for the hub page
router.get('/recommended', gameController_1.getRecommendedGames);
// Slug-based query (for marketing detail page)
router.get('/slug/:slug', gameController_1.getGameBySlug);
// Standard CRUD
router.get('/', gameController_1.getGames);
router.get('/:id', gameController_1.getGameById);
router.post('/', gameController_1.createGame);
router.put('/:id', gameController_1.updateGame);
router.delete('/:id', gameController_1.deleteGame);
exports.default = router;
//# sourceMappingURL=gameRoutes.js.map