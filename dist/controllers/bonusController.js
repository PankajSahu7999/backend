"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteBonus = exports.updateBonus = exports.createBonus = exports.getBonusById = exports.getBonuses = void 0;
const prisma_1 = require("../prisma");
const getBonuses = async (req, res) => {
    try {
        const { type, casino_id, limit, search } = req.query;
        const where = {};
        if (type) {
            where.type = { contains: String(type), mode: 'insensitive' };
        }
        if (casino_id) {
            where.casino_id = String(casino_id);
        }
        if (search) {
            where.OR = [
                { title: { contains: String(search), mode: 'insensitive' } },
                { amount: { contains: String(search), mode: 'insensitive' } },
                { type: { contains: String(search), mode: 'insensitive' } },
            ];
        }
        const bonuses = await prisma_1.prisma.casinoBonus.findMany({
            where,
            include: {
                casino: {
                    select: {
                        id: true,
                        name: true,
                        slug: true,
                        logo: true,
                        rating: true,
                        website_url: true,
                        status: true,
                    },
                },
            },
            orderBy: [{ sort_order: 'asc' }, { created_at: 'desc' }],
            take: limit ? parseInt(String(limit), 10) : undefined,
        });
        res.json(bonuses);
    }
    catch (error) {
        console.error('Error fetching bonuses:', error);
        res.status(500).json({ error: 'Failed to fetch bonuses' });
    }
};
exports.getBonuses = getBonuses;
const getBonusById = async (req, res) => {
    try {
        const id = String(req.params.id);
        const bonus = await prisma_1.prisma.casinoBonus.findUnique({
            where: { id },
            include: {
                casino: {
                    select: {
                        id: true,
                        name: true,
                        slug: true,
                        logo: true,
                        rating: true,
                        website_url: true,
                        status: true,
                    },
                },
            },
        });
        if (!bonus) {
            res.status(404).json({ error: 'Bonus not found' });
            return;
        }
        res.json(bonus);
    }
    catch (error) {
        console.error('Error fetching bonus by id:', error);
        res.status(500).json({ error: 'Failed to fetch bonus' });
    }
};
exports.getBonusById = getBonusById;
const createBonus = async (req, res) => {
    try {
        const { casino_id, title, type, amount, bonus_code, wagering_requirement, sort_order } = req.body;
        const bonus = await prisma_1.prisma.casinoBonus.create({
            data: {
                casino_id,
                title,
                type,
                amount,
                bonus_code,
                wagering_requirement,
                sort_order: sort_order ?? 0,
            },
        });
        res.status(201).json(bonus);
    }
    catch (error) {
        console.error('Error creating bonus:', error);
        res.status(500).json({ error: 'Failed to create bonus' });
    }
};
exports.createBonus = createBonus;
const updateBonus = async (req, res) => {
    try {
        const id = String(req.params.id);
        const { title, type, amount, bonus_code, wagering_requirement, sort_order } = req.body;
        const bonus = await prisma_1.prisma.casinoBonus.update({
            where: { id },
            data: {
                title,
                type,
                amount,
                bonus_code,
                wagering_requirement,
                sort_order,
            },
        });
        res.json(bonus);
    }
    catch (error) {
        console.error('Error updating bonus:', error);
        res.status(500).json({ error: 'Failed to update bonus' });
    }
};
exports.updateBonus = updateBonus;
const deleteBonus = async (req, res) => {
    try {
        const id = String(req.params.id);
        await prisma_1.prisma.casinoBonus.delete({
            where: { id },
        });
        res.status(204).send();
    }
    catch (error) {
        console.error('Error deleting bonus:', error);
        res.status(500).json({ error: 'Failed to delete bonus' });
    }
};
exports.deleteBonus = deleteBonus;
//# sourceMappingURL=bonusController.js.map