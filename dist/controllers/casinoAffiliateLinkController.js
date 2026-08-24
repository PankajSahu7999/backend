"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getAffiliateLinkByCountry = exports.deleteCasinoAffiliateLink = exports.updateCasinoAffiliateLink = exports.createCasinoAffiliateLink = exports.getCasinoAffiliateLinks = void 0;
const prisma_1 = require("../prisma");
const getCasinoAffiliateLinks = async (req, res) => {
    try {
        const casinoId = String(req.params.casinoId);
        const links = await prisma_1.prisma.casinoAffiliateLink.findMany({
            where: { casino_id: casinoId },
            include: {
                country: true
            },
            orderBy: { created_at: 'desc' }
        });
        res.json(links);
    }
    catch (error) {
        res.status(500).json({ error: 'Failed to fetch affiliate links' });
    }
};
exports.getCasinoAffiliateLinks = getCasinoAffiliateLinks;
const createCasinoAffiliateLink = async (req, res) => {
    try {
        const { casino_id, country_id, affiliate_url } = req.body;
        if (!casino_id || !country_id || !affiliate_url) {
            return res.status(400).json({ error: 'Missing required fields' });
        }
        const link = await prisma_1.prisma.casinoAffiliateLink.create({
            data: {
                casino_id,
                country_id,
                affiliate_url
            },
            include: {
                country: true
            }
        });
        res.status(201).json(link);
    }
    catch (error) {
        console.error('Error creating affiliate link:', error);
        res.status(500).json({ error: 'Failed to create affiliate link' });
    }
};
exports.createCasinoAffiliateLink = createCasinoAffiliateLink;
const updateCasinoAffiliateLink = async (req, res) => {
    try {
        const id = String(req.params.id);
        const { affiliate_url } = req.body;
        const link = await prisma_1.prisma.casinoAffiliateLink.update({
            where: { id },
            data: { affiliate_url },
            include: {
                country: true
            }
        });
        res.json(link);
    }
    catch (error) {
        res.status(500).json({ error: 'Failed to update affiliate link' });
    }
};
exports.updateCasinoAffiliateLink = updateCasinoAffiliateLink;
const deleteCasinoAffiliateLink = async (req, res) => {
    try {
        const id = String(req.params.id);
        await prisma_1.prisma.casinoAffiliateLink.delete({
            where: { id }
        });
        res.status(204).send();
    }
    catch (error) {
        res.status(500).json({ error: 'Failed to delete affiliate link' });
    }
};
exports.deleteCasinoAffiliateLink = deleteCasinoAffiliateLink;
const getAffiliateLinkByCountry = async (req, res) => {
    try {
        const casinoId = String(req.params.casinoId);
        const countryCode = String(req.params.countryCode);
        // Find country by code
        const country = await prisma_1.prisma.country.findUnique({
            where: { code: countryCode }
        });
        if (!country) {
            return res.status(404).json({ error: 'Country not found' });
        }
        // Find affiliate link for this casino and country
        const link = await prisma_1.prisma.casinoAffiliateLink.findUnique({
            where: {
                casino_id_country_id: {
                    casino_id: casinoId,
                    country_id: country.id
                }
            }
        });
        if (link) {
            return res.json(link);
        }
        // If no country-specific link, return default link from casino
        const casino = await prisma_1.prisma.casino.findUnique({
            where: { id: casinoId },
            select: { default_affiliate_url: true, affiliate_url: true }
        });
        if (casino?.default_affiliate_url) {
            return res.json({
                affiliate_url: casino.default_affiliate_url,
                is_default: true
            });
        }
        if (casino?.affiliate_url) {
            return res.json({
                affiliate_url: casino.affiliate_url,
                is_default: true
            });
        }
        res.status(404).json({ error: 'No affiliate link found' });
    }
    catch (error) {
        console.error('Error fetching affiliate link:', error);
        res.status(500).json({ error: 'Failed to fetch affiliate link' });
    }
};
exports.getAffiliateLinkByCountry = getAffiliateLinkByCountry;
//# sourceMappingURL=casinoAffiliateLinkController.js.map