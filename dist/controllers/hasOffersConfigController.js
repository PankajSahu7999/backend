"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getConfigByCasino = exports.deleteHasOffersConfig = exports.updateHasOffersConfig = exports.createHasOffersConfig = exports.getHasOffersConfig = exports.getHasOffersConfigs = void 0;
const prisma_1 = require("../prisma");
/**
 * Get all HasOffers postback configurations
 */
const getHasOffersConfigs = async (req, res) => {
    try {
        const { casino_id, status } = req.query;
        const where = {};
        if (casino_id) {
            where.casino_id = casino_id;
        }
        if (status) {
            where.status = status;
        }
        const configs = await prisma_1.prisma.hasOffersPostbackConfig.findMany({
            where,
            include: {
                casino: {
                    select: {
                        id: true,
                        name: true,
                        slug: true
                    }
                },
                _count: {
                    select: {
                        conversions: true
                    }
                }
            },
            orderBy: { created_at: 'desc' }
        });
        res.json(configs);
    }
    catch (error) {
        console.error('Error fetching HasOffers configs:', error);
        res.status(500).json({ error: 'Failed to fetch HasOffers configurations' });
    }
};
exports.getHasOffersConfigs = getHasOffersConfigs;
/**
 * Get a single HasOffers postback configuration
 */
const getHasOffersConfig = async (req, res) => {
    try {
        const id = String(req.params.id);
        const config = await prisma_1.prisma.hasOffersPostbackConfig.findUnique({
            where: { id },
            include: {
                casino: true,
                conversions: {
                    take: 10,
                    orderBy: { conversion_time: 'desc' }
                }
            }
        });
        if (!config) {
            return res.status(404).json({ error: 'HasOffers configuration not found' });
        }
        res.json(config);
    }
    catch (error) {
        console.error('Error fetching HasOffers config:', error);
        res.status(500).json({ error: 'Failed to fetch HasOffers configuration' });
    }
};
exports.getHasOffersConfig = getHasOffersConfig;
/**
 * Create a new HasOffers postback configuration
 */
const createHasOffersConfig = async (req, res) => {
    try {
        const { casino_id, network_domain, offer_id, postback_url, status = 'active', notes } = req.body;
        if (!casino_id || !network_domain || !offer_id) {
            return res.status(400).json({
                error: 'Missing required fields: casino_id, network_domain, offer_id'
            });
        }
        // Verify casino exists
        const casino = await prisma_1.prisma.casino.findUnique({
            where: { id: casino_id }
        });
        if (!casino) {
            return res.status(404).json({ error: 'Casino not found' });
        }
        const config = await prisma_1.prisma.hasOffersPostbackConfig.create({
            data: {
                casino_id,
                network_domain,
                offer_id,
                postback_url: postback_url || generateDefaultPostbackUrl(casino_id),
                status,
                notes
            },
            include: {
                casino: true
            }
        });
        res.status(201).json(config);
    }
    catch (error) {
        console.error('Error creating HasOffers config:', error);
        res.status(500).json({ error: 'Failed to create HasOffers configuration' });
    }
};
exports.createHasOffersConfig = createHasOffersConfig;
/**
 * Update a HasOffers postback configuration
 */
const updateHasOffersConfig = async (req, res) => {
    try {
        const id = String(req.params.id);
        const { network_domain, offer_id, postback_url, status, notes } = req.body;
        const config = await prisma_1.prisma.hasOffersPostbackConfig.update({
            where: { id },
            data: {
                network_domain: network_domain || undefined,
                offer_id: offer_id || undefined,
                postback_url: postback_url || undefined,
                status: status || undefined,
                notes: notes !== undefined ? notes : undefined
            },
            include: {
                casino: true
            }
        });
        res.json(config);
    }
    catch (error) {
        console.error('Error updating HasOffers config:', error);
        res.status(500).json({ error: 'Failed to update HasOffers configuration' });
    }
};
exports.updateHasOffersConfig = updateHasOffersConfig;
/**
 * Delete a HasOffers postback configuration
 */
const deleteHasOffersConfig = async (req, res) => {
    try {
        const id = String(req.params.id);
        await prisma_1.prisma.hasOffersPostbackConfig.delete({
            where: { id }
        });
        res.status(204).send();
    }
    catch (error) {
        console.error('Error deleting HasOffers config:', error);
        res.status(500).json({ error: 'Failed to delete HasOffers configuration' });
    }
};
exports.deleteHasOffersConfig = deleteHasOffersConfig;
/**
 * Get config by casino ID
 */
const getConfigByCasino = async (req, res) => {
    try {
        const casinoId = String(req.params.casinoId);
        const configs = await prisma_1.prisma.hasOffersPostbackConfig.findMany({
            where: { casino_id: casinoId },
            include: {
                casino: true,
                _count: {
                    select: {
                        conversions: true
                    }
                }
            },
            orderBy: { created_at: 'desc' }
        });
        res.json(configs);
    }
    catch (error) {
        console.error('Error fetching casino HasOffers configs:', error);
        res.status(500).json({ error: 'Failed to fetch casino HasOffers configurations' });
    }
};
exports.getConfigByCasino = getConfigByCasino;
/**
 * Generate default postback URL for a casino
 */
function generateDefaultPostbackUrl(casinoId) {
    // This should be replaced with your actual domain
    const baseUrl = process.env.API_BASE_URL || 'http://localhost:3001';
    return `${baseUrl}/api/hasoffers/postback`;
}
//# sourceMappingURL=hasOffersConfigController.js.map