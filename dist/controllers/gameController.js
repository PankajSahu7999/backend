"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.seedGamesEndpoint = exports.getRecommendedGames = exports.deleteGame = exports.updateGame = exports.createGame = exports.getGameById = exports.getGameBySlug = exports.getGames = void 0;
const prisma_1 = require("../prisma");
const getGames = async (req, res) => {
    try {
        const { category, game_type, provider, is_recommended, is_sponsored, search, limit } = req.query;
        const where = {};
        if (category) {
            where.category = { equals: String(category), mode: 'insensitive' };
        }
        if (game_type) {
            where.game_type = { equals: String(game_type), mode: 'insensitive' };
        }
        if (provider) {
            where.provider = { equals: String(provider), mode: 'insensitive' };
        }
        if (is_recommended !== undefined) {
            where.is_recommended = String(is_recommended) === 'true';
        }
        if (is_sponsored !== undefined) {
            where.is_sponsored = String(is_sponsored) === 'true';
        }
        if (search) {
            where.OR = [
                { title: { contains: String(search), mode: 'insensitive' } },
                { provider: { contains: String(search), mode: 'insensitive' } },
                { game_type: { contains: String(search), mode: 'insensitive' } },
                { category: { contains: String(search), mode: 'insensitive' } },
            ];
        }
        const take = limit ? parseInt(String(limit), 10) : undefined;
        const games = await prisma_1.prisma.casinoGame.findMany({
            where,
            orderBy: [
                { sort_order: 'asc' },
                { created_at: 'desc' }
            ],
            take,
        });
        res.json(games);
    }
    catch (error) {
        console.error('Error fetching casino games:', error);
        res.status(500).json({ error: 'Failed to fetch casino games' });
    }
};
exports.getGames = getGames;
const getGameBySlug = async (req, res) => {
    try {
        const slug = String(req.params.slug);
        const game = await prisma_1.prisma.casinoGame.findUnique({
            where: { slug },
        });
        if (!game) {
            return res.status(404).json({ error: 'Casino game not found' });
        }
        res.json(game);
    }
    catch (error) {
        console.error('Error fetching game by slug:', error);
        res.status(500).json({ error: 'Failed to fetch game' });
    }
};
exports.getGameBySlug = getGameBySlug;
const getGameById = async (req, res) => {
    try {
        const id = String(req.params.id);
        const game = await prisma_1.prisma.casinoGame.findUnique({
            where: { id },
        });
        if (!game) {
            return res.status(404).json({ error: 'Game not found' });
        }
        res.json(game);
    }
    catch (error) {
        console.error('Error fetching game by id:', error);
        res.status(500).json({ error: 'Failed to fetch game' });
    }
};
exports.getGameById = getGameById;
const createGame = async (req, res) => {
    try {
        const data = req.body;
        const slug = data.slug
            ? String(data.slug).toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '')
            : String(data.title).toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');
        const newGame = await prisma_1.prisma.casinoGame.create({
            data: {
                title: data.title,
                slug,
                game_type: data.game_type || null,
                provider: data.provider || null,
                category: data.category || null,
                thumbnail: data.thumbnail || null,
                hero_banner: data.hero_banner || null,
                demo_url: data.demo_url || null,
                affiliate_url: data.affiliate_url || null,
                rtp: data.rtp || null,
                volatility: data.volatility || 'Medium',
                min_bet: data.min_bet !== undefined && data.min_bet !== '' ? Number(data.min_bet) : null,
                max_bet: data.max_bet !== undefined && data.max_bet !== '' ? Number(data.max_bet) : null,
                release_date: data.release_date ? new Date(data.release_date) : null,
                autoplay: data.autoplay === true || data.autoplay === 'true',
                multiplier: data.multiplier === true || data.multiplier === 'true',
                in_game_interaction: data.in_game_interaction === true || data.in_game_interaction === 'true',
                player_customisation: data.player_customisation !== false && data.player_customisation !== 'false',
                rebet: data.rebet !== false && data.rebet !== 'false',
                side_bet: data.side_bet !== false && data.side_bet !== 'false',
                undo: data.undo !== false && data.undo !== 'false',
                game_history: data.game_history !== false && data.game_history !== 'false',
                bonus_features: data.bonus_features !== false && data.bonus_features !== 'false',
                rating: data.rating ? Number(data.rating) : 4.8,
                overview: data.overview || null,
                rtp_details: data.rtp_details || null,
                pros: Array.isArray(data.pros) ? data.pros : typeof data.pros === 'string' ? data.pros.split('\n').filter(Boolean) : [],
                cons: Array.isArray(data.cons) ? data.cons : typeof data.cons === 'string' ? data.cons.split('\n').filter(Boolean) : [],
                author_name: data.author_name || 'Bojan Jovanovic',
                author_avatar: data.author_avatar || null,
                is_recommended: data.is_recommended === true || data.is_recommended === 'true',
                is_sponsored: data.is_sponsored === true || data.is_sponsored === 'true',
                status: data.status || 'active',
                sort_order: data.sort_order ? parseInt(data.sort_order, 10) : 0,
            },
        });
        res.status(201).json(newGame);
    }
    catch (error) {
        console.error('Error creating casino game:', error);
        res.status(500).json({ error: 'Failed to create game' });
    }
};
exports.createGame = createGame;
const updateGame = async (req, res) => {
    try {
        const id = String(req.params.id);
        const data = req.body;
        const updatedGame = await prisma_1.prisma.casinoGame.update({
            where: { id },
            data: {
                title: data.title !== undefined ? data.title : undefined,
                slug: data.slug !== undefined ? String(data.slug).toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '') : undefined,
                game_type: data.game_type !== undefined ? data.game_type : undefined,
                provider: data.provider !== undefined ? data.provider : undefined,
                category: data.category !== undefined ? data.category : undefined,
                thumbnail: data.thumbnail !== undefined ? data.thumbnail : undefined,
                hero_banner: data.hero_banner !== undefined ? data.hero_banner : undefined,
                demo_url: data.demo_url !== undefined ? data.demo_url : undefined,
                affiliate_url: data.affiliate_url !== undefined ? data.affiliate_url : undefined,
                rtp: data.rtp !== undefined ? data.rtp : undefined,
                volatility: data.volatility !== undefined ? data.volatility : undefined,
                min_bet: data.min_bet !== undefined ? (data.min_bet !== '' ? Number(data.min_bet) : null) : undefined,
                max_bet: data.max_bet !== undefined ? (data.max_bet !== '' ? Number(data.max_bet) : null) : undefined,
                release_date: data.release_date !== undefined ? (data.release_date ? new Date(data.release_date) : null) : undefined,
                autoplay: data.autoplay !== undefined ? (data.autoplay === true || data.autoplay === 'true') : undefined,
                multiplier: data.multiplier !== undefined ? (data.multiplier === true || data.multiplier === 'true') : undefined,
                in_game_interaction: data.in_game_interaction !== undefined ? (data.in_game_interaction === true || data.in_game_interaction === 'true') : undefined,
                player_customisation: data.player_customisation !== undefined ? (data.player_customisation === true || data.player_customisation === 'true') : undefined,
                rebet: data.rebet !== undefined ? (data.rebet === true || data.rebet === 'true') : undefined,
                side_bet: data.side_bet !== undefined ? (data.side_bet === true || data.side_bet === 'true') : undefined,
                undo: data.undo !== undefined ? (data.undo === true || data.undo === 'true') : undefined,
                game_history: data.game_history !== undefined ? (data.game_history === true || data.game_history === 'true') : undefined,
                bonus_features: data.bonus_features !== undefined ? (data.bonus_features === true || data.bonus_features === 'true') : undefined,
                rating: data.rating !== undefined ? Number(data.rating) : undefined,
                overview: data.overview !== undefined ? data.overview : undefined,
                rtp_details: data.rtp_details !== undefined ? data.rtp_details : undefined,
                pros: data.pros !== undefined ? (Array.isArray(data.pros) ? data.pros : String(data.pros).split('\n').filter(Boolean)) : undefined,
                cons: data.cons !== undefined ? (Array.isArray(data.cons) ? data.cons : String(data.cons).split('\n').filter(Boolean)) : undefined,
                author_name: data.author_name !== undefined ? data.author_name : undefined,
                author_avatar: data.author_avatar !== undefined ? data.author_avatar : undefined,
                is_recommended: data.is_recommended !== undefined ? (data.is_recommended === true || data.is_recommended === 'true') : undefined,
                is_sponsored: data.is_sponsored !== undefined ? (data.is_sponsored === true || data.is_sponsored === 'true') : undefined,
                status: data.status !== undefined ? data.status : undefined,
                sort_order: data.sort_order !== undefined ? parseInt(data.sort_order, 10) : undefined,
            },
        });
        res.json(updatedGame);
    }
    catch (error) {
        console.error('Error updating casino game:', error);
        res.status(500).json({ error: 'Failed to update game' });
    }
};
exports.updateGame = updateGame;
const deleteGame = async (req, res) => {
    try {
        const id = String(req.params.id);
        await prisma_1.prisma.casinoGame.delete({
            where: { id },
        });
        res.json({ message: 'Game deleted successfully' });
    }
    catch (error) {
        console.error('Error deleting casino game:', error);
        res.status(500).json({ error: 'Failed to delete game' });
    }
};
exports.deleteGame = deleteGame;
const getRecommendedGames = async (req, res) => {
    try {
        const games = await prisma_1.prisma.casinoGame.findMany({
            where: {
                OR: [
                    { is_recommended: true },
                    { is_sponsored: true }
                ],
                status: 'active'
            },
            orderBy: { sort_order: 'asc' },
        });
        // Group by category/type
        const poker = games.filter(g => (g.game_type || '').toLowerCase().includes('poker') || (g.category || '').toLowerCase().includes('poker'));
        const roulette = games.filter(g => (g.game_type || '').toLowerCase().includes('roulette') || (g.category || '').toLowerCase().includes('roulette'));
        const blackjack = games.filter(g => (g.game_type || '').toLowerCase().includes('blackjack') || (g.category || '').toLowerCase().includes('blackjack'));
        const craps = games.filter(g => (g.game_type || '').toLowerCase().includes('craps') || (g.category || '').toLowerCase().includes('dice'));
        const sponsored = games.filter(g => g.is_sponsored);
        res.json({
            poker,
            roulette,
            blackjack,
            craps,
            sponsored,
            all: games,
        });
    }
    catch (error) {
        console.error('Error fetching recommended games:', error);
        res.status(500).json({ error: 'Failed to fetch recommended games' });
    }
};
exports.getRecommendedGames = getRecommendedGames;
const seedGamesEndpoint = async (req, res) => {
    try {
        const { seedGames } = await Promise.resolve().then(() => __importStar(require('../scripts/seedGames')));
        const result = await seedGames();
        res.json({
            success: true,
            message: `Successfully seeded ${result.count} casino games!`,
            data: result,
        });
    }
    catch (error) {
        console.error('Error in seedGamesEndpoint:', error);
        res.status(500).json({
            success: false,
            error: error.message || 'Failed to seed casino games',
        });
    }
};
exports.seedGamesEndpoint = seedGamesEndpoint;
//# sourceMappingURL=gameController.js.map