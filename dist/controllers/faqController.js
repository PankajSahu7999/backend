"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteFaq = exports.updateFaq = exports.createFaq = exports.getFaqById = exports.getFaqCategories = exports.getFaqs = void 0;
const prisma_1 = require("../prisma");
const getFaqs = async (req, res) => {
    try {
        const { category, status, limit, fallback = 'true' } = req.query;
        const statusFilter = status !== undefined ? (status === 'true' || status === '1') : undefined;
        // 1. If a specific category is requested
        if (category && typeof category === 'string' && category.trim() !== '' && category.toLowerCase() !== 'all') {
            const categorySlug = category.trim();
            const matchedFaqs = await prisma_1.prisma.faq.findMany({
                where: {
                    category: {
                        equals: categorySlug,
                        mode: 'insensitive',
                    },
                    ...(statusFilter !== undefined ? { status: statusFilter } : {}),
                },
                orderBy: { sort_order: 'asc' },
                take: limit ? Number(limit) : undefined,
            });
            // If FAQs exist for this category, return them
            if (matchedFaqs.length > 0) {
                res.json(matchedFaqs);
                return;
            }
            // If no FAQs found for this category and fallback is enabled, fallback to 'home' FAQs
            if (fallback === 'true' && categorySlug.toLowerCase() !== 'home') {
                const homeFallbackFaqs = await prisma_1.prisma.faq.findMany({
                    where: {
                        category: {
                            in: ['home', 'Home', 'General', 'general'],
                        },
                        ...(statusFilter !== undefined ? { status: statusFilter } : {}),
                    },
                    orderBy: { sort_order: 'asc' },
                    take: limit ? Number(limit) : undefined,
                });
                res.json(homeFallbackFaqs);
                return;
            }
            res.json([]);
            return;
        }
        // 2. If no category is requested:
        // For admin / management endpoints, return all FAQs.
        // For public endpoint (status=true and no category), default to 'home' FAQs or all sorted.
        const where = {};
        if (statusFilter !== undefined) {
            where.status = statusFilter;
        }
        // If it's a public request asking without category, prioritize home FAQs
        const isPublicHomeRequest = req.path === '/api/faqs' || req.originalUrl.startsWith('/api/faqs');
        if (isPublicHomeRequest && !category) {
            where.category = {
                in: ['home', 'Home', 'General', 'general'],
            };
        }
        const faqs = await prisma_1.prisma.faq.findMany({
            where,
            orderBy: [{ category: 'asc' }, { sort_order: 'asc' }],
            take: limit ? Number(limit) : undefined,
        });
        res.json(faqs);
    }
    catch (error) {
        console.error('Error fetching FAQs:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
exports.getFaqs = getFaqs;
const getFaqCategories = async (req, res) => {
    try {
        const rawCategories = await prisma_1.prisma.faq.findMany({
            select: { category: true },
            distinct: ['category'],
            where: {
                category: { not: null },
            },
        });
        const categories = rawCategories
            .map((c) => c.category)
            .filter((c) => Boolean(c && c.trim() !== ''));
        res.json(categories);
    }
    catch (error) {
        console.error('Error fetching FAQ categories:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
exports.getFaqCategories = getFaqCategories;
const getFaqById = async (req, res) => {
    try {
        const id = String(req.params.id);
        const faq = await prisma_1.prisma.faq.findUnique({
            where: { id },
        });
        if (!faq) {
            res.status(404).json({ error: 'FAQ not found' });
            return;
        }
        res.json(faq);
    }
    catch (error) {
        console.error('Error fetching FAQ:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
exports.getFaqById = getFaqById;
const createFaq = async (req, res) => {
    try {
        const { question, answer, category, sort_order, status } = req.body;
        if (!question || !answer) {
            res.status(400).json({ error: 'Missing required fields: question, answer' });
            return;
        }
        const faq = await prisma_1.prisma.faq.create({
            data: {
                question,
                answer,
                category: category ? String(category).trim() : 'home',
                sort_order: Number(sort_order) || 0,
                status: status !== undefined ? Boolean(status) : true,
            },
        });
        res.status(201).json(faq);
    }
    catch (error) {
        console.error('Error creating FAQ:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
exports.createFaq = createFaq;
const updateFaq = async (req, res) => {
    try {
        const id = String(req.params.id);
        const { question, answer, category, sort_order, status } = req.body;
        const faq = await prisma_1.prisma.faq.update({
            where: { id },
            data: {
                question,
                answer,
                category: category !== undefined ? String(category).trim() : undefined,
                sort_order: sort_order !== undefined ? Number(sort_order) : undefined,
                status: status !== undefined ? Boolean(status) : undefined,
            },
        });
        res.json(faq);
    }
    catch (error) {
        console.error('Error updating FAQ:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
exports.updateFaq = updateFaq;
const deleteFaq = async (req, res) => {
    try {
        const id = String(req.params.id);
        await prisma_1.prisma.faq.delete({
            where: { id },
        });
        res.status(204).send();
    }
    catch (error) {
        console.error('Error deleting FAQ:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
exports.deleteFaq = deleteFaq;
//# sourceMappingURL=faqController.js.map