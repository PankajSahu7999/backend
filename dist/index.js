"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const dotenv_1 = __importDefault(require("dotenv"));
const prisma_1 = require("./prisma");
const path_1 = __importDefault(require("path"));
dotenv_1.default.config();
const app = (0, express_1.default)();
const port = process.env.PORT || 4000;
// Build allowed origins dynamically from environment variables
const allowedOrigins = [];
// Add development localhost URLs only if in development mode
if (process.env.NODE_ENV !== 'production') {
    allowedOrigins.push('http://localhost:3000', 'http://localhost:3001');
}
// Add production frontend URL(s) from env
if (process.env.FRONTEND_URL) {
    // Support multiple comma-separated URLs e.g. "https://casinoreviewsbook.com,https://www.casinoreviewsbook.com"
    process.env.FRONTEND_URL.split(',').map(url => url.trim()).forEach(url => {
        if (url && !allowedOrigins.includes(url))
            allowedOrigins.push(url);
    });
}
// Additional origins from ADDITIONAL_ORIGINS env (optional)
if (process.env.ADDITIONAL_ORIGINS) {
    process.env.ADDITIONAL_ORIGINS.split(',').map(url => url.trim()).forEach(url => {
        if (url && !allowedOrigins.includes(url))
            allowedOrigins.push(url);
    });
}
console.log("NODE_ENV:", process.env.NODE_ENV);
console.log("FRONTEND_URL:", process.env.FRONTEND_URL);
console.log("Allowed Origins:", allowedOrigins);
app.use((0, cors_1.default)({
    origin: (origin, callback) => {
        // Allow requests with no origin (e.g. mobile apps, curl, server-to-server)
        if (!origin)
            return callback(null, true);
        if (allowedOrigins.includes(origin))
            return callback(null, true);
        callback(new Error(`CORS: origin '${origin}' not allowed`));
    },
    credentials: true,
}));
app.use(express_1.default.json());
// Serve static files from uploads directory
app.use('/uploads', express_1.default.static(path_1.default.join(process.cwd(), 'uploads')));
// Fallback for missing uploads images: return a valid SVG image so Googlebot & clients never encounter broken image 404s
const fallbackImageSvg = Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" width="800" height="450" viewBox="0 0 800 450"><rect width="800" height="450" fill="#1e293b"/><text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" font-family="system-ui, -apple-system, sans-serif" font-size="28" font-weight="600" fill="#94a3b8">Casino Reviews Book</text></svg>`);
app.use('/uploads', (req, res) => {
    res.setHeader('Content-Type', 'image/svg+xml');
    res.setHeader('Cache-Control', 'public, max-age=86400');
    res.status(200).send(fallbackImageSvg);
});
const emailRoutes_1 = __importDefault(require("./routes/emailRoutes"));
const casinoRoutes_1 = __importDefault(require("./routes/casinoRoutes"));
const userRoutes_1 = __importDefault(require("./routes/userRoutes"));
const blogRoutes_1 = __importDefault(require("./routes/blogRoutes"));
const newsRoutes_1 = __importDefault(require("./routes/newsRoutes"));
const reviewRoutes_1 = __importDefault(require("./routes/reviewRoutes"));
const faqRoutes_1 = __importDefault(require("./routes/faqRoutes"));
const bannerRoutes_1 = __importDefault(require("./routes/bannerRoutes"));
const affiliateLinkRoutes_1 = __importDefault(require("./routes/affiliateLinkRoutes"));
const mediaRoutes_1 = __importDefault(require("./routes/mediaRoutes"));
const settingsRoutes_1 = __importDefault(require("./routes/settingsRoutes"));
const logsRoutes_1 = __importDefault(require("./routes/logsRoutes"));
const categoryRoutes_1 = __importDefault(require("./routes/categoryRoutes"));
const tagRoutes_1 = __importDefault(require("./routes/tagRoutes"));
const countryRoutes_1 = __importDefault(require("./routes/countryRoutes"));
const gameTypeRoutes_1 = __importDefault(require("./routes/gameTypeRoutes"));
const bannedCountryRoutes_1 = __importDefault(require("./routes/bannedCountryRoutes"));
const regionRoutes_1 = __importDefault(require("./routes/regionRoutes"));
const casinoReviewRoutes_1 = __importDefault(require("./routes/casinoReviewRoutes"));
const casinoAffiliateLinkRoutes_1 = __importDefault(require("./routes/casinoAffiliateLinkRoutes"));
const userController_1 = require("./controllers/userController");
const contactTicketRoutes_1 = __importDefault(require("./routes/contactTicketRoutes"));
const contactTicketController_1 = require("./controllers/contactTicketController");
const hasOffersPostbackRoutes_1 = __importDefault(require("./routes/hasOffersPostbackRoutes"));
const hasOffersConfigRoutes_1 = __importDefault(require("./routes/hasOffersConfigRoutes"));
const guideRoutes_1 = __importDefault(require("./routes/guideRoutes"));
const bonusSectionRoutes_1 = __importDefault(require("./routes/bonusSectionRoutes"));
const bonusRoutes_1 = __importDefault(require("./routes/bonusRoutes"));
const settingsController_1 = require("./controllers/settingsController");
const categoryController_1 = require("./controllers/categoryController");
app.use('/api/admin/guides', guideRoutes_1.default);
app.use('/api/guides', guideRoutes_1.default);
app.use('/api/admin/bonus-sections', bonusSectionRoutes_1.default);
app.use('/api/bonus-sections', bonusSectionRoutes_1.default);
app.use('/api/admin/email-campaigns', emailRoutes_1.default);
app.use('/api/admin/casinos', casinoRoutes_1.default);
app.use('/api/admin/users', userRoutes_1.default);
app.use('/api/admin/blogs', blogRoutes_1.default);
app.use('/api/admin/news', newsRoutes_1.default);
app.use('/api/admin/reviews', reviewRoutes_1.default);
app.use('/api/admin/faqs', faqRoutes_1.default);
app.use('/api/admin/banners', bannerRoutes_1.default);
app.use('/api/admin/affiliate-links', affiliateLinkRoutes_1.default);
app.use('/api/admin/media', mediaRoutes_1.default);
app.use('/api/admin/settings', settingsRoutes_1.default);
app.get('/api/settings', settingsController_1.getSettings);
app.use('/api/admin/logs', logsRoutes_1.default);
app.use('/api/admin/categories', categoryRoutes_1.default);
app.get('/api/categories', categoryController_1.getCategories);
app.get('/api/categories/slug/:slug', categoryController_1.getCategoryBySlug);
app.get('/api/categories/:id', categoryController_1.getCategoryById);
app.use('/api/admin/bonuses', bonusRoutes_1.default);
app.use('/api/bonuses', bonusRoutes_1.default);
app.use('/api/admin/tags', tagRoutes_1.default);
app.use('/api/admin/countries', countryRoutes_1.default);
app.use('/api/admin/game-types', gameTypeRoutes_1.default);
app.use('/api/admin/banned-countries', bannedCountryRoutes_1.default);
app.use('/api/admin/regions', regionRoutes_1.default);
app.use('/api/admin/casino-reviews', casinoReviewRoutes_1.default);
app.use('/api/admin/casino-affiliate-links', casinoAffiliateLinkRoutes_1.default);
app.use('/api/casino-affiliate-links', casinoAffiliateLinkRoutes_1.default);
app.use('/api/admin/contact-tickets', contactTicketRoutes_1.default);
app.use('/api/casino-reviews', casinoReviewRoutes_1.default);
// HasOffers postback tracking routes
app.use('/api/hasoffers', hasOffersPostbackRoutes_1.default);
app.use('/api/admin/hasoffers', hasOffersConfigRoutes_1.default);
// Public registration endpoint
app.post('/api/register', userController_1.registerUser);
// Public contact tickets endpoints
app.post('/api/contact-tickets', contactTicketController_1.createTicket);
app.get('/api/contact-tickets/my-tickets', contactTicketController_1.getUserTickets);
// Public endpoint: get all banned country codes (supports both /api/banned-countries and /api/api/banned-countries)
app.get(['/api/banned-countries', '/api/api/banned-countries'], async (req, res) => {
    try {
        const countries = await prisma_1.prisma.bannedCountry.findMany({
            select: { country_code: true }
        });
        res.json(countries.map(c => c.country_code));
    }
    catch (err) {
        console.error("Error fetching banned countries:", err);
        res.status(500).json({ error: 'Failed to fetch banned countries' });
    }
});
// Check if an external URL allows iframe embedding (with 1-hour cache)
const frameCheckCache = new Map();
app.get('/api/check-frame', async (req, res) => {
    const targetUrl = req.query.url;
    if (!targetUrl) {
        return res.json({ canEmbed: false });
    }
    const cached = frameCheckCache.get(targetUrl);
    if (cached && Date.now() - cached.timestamp < 3600000) {
        return res.json({ canEmbed: cached.canEmbed });
    }
    try {
        const controller = new AbortController();
        const timeout = setTimeout(() => controller.abort(), 3500);
        const response = await fetch(targetUrl, {
            method: 'HEAD',
            headers: {
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
            },
            signal: controller.signal,
            redirect: 'follow',
        });
        clearTimeout(timeout);
        const xfo = (response.headers.get('x-frame-options') || '').toLowerCase();
        const csp = (response.headers.get('content-security-policy') || '').toLowerCase();
        const isBlocked = xfo.includes('deny') ||
            xfo.includes('sameorigin') ||
            csp.includes('frame-ancestors');
        const canEmbed = !isBlocked;
        frameCheckCache.set(targetUrl, { canEmbed, timestamp: Date.now() });
        res.json({ canEmbed });
    }
    catch {
        frameCheckCache.set(targetUrl, { canEmbed: false, timestamp: Date.now() });
        res.json({ canEmbed: false });
    }
});
const casinoController_1 = require("./controllers/casinoController");
// Public API endpoint for frontend
app.get('/api/casinos/slug/:slug/similar', casinoController_1.getSimilarCasinos);
app.get('/api/casinos/slug/:slug', casinoController_1.getCasinoBySlug);
app.get('/api/casinos/category/:slug', async (req, res) => {
    try {
        const { slug } = req.params;
        const cleanSlug = slug.trim().toLowerCase();
        const variations = Array.from(new Set([
            cleanSlug,
            cleanSlug.endsWith('s') ? cleanSlug.slice(0, -1) : cleanSlug + 's',
            cleanSlug.replace(/-casinos$/, '-casino'),
            cleanSlug.replace(/-casino$/, '-casinos'),
            cleanSlug.replace(/-bonuses$/, '-bonus'),
            cleanSlug.replace(/-bonus$/, '-bonuses')
        ]));
        const category = await prisma_1.prisma.casinoCategory.findFirst({
            where: {
                OR: variations.map((v) => ({
                    slug: { equals: v, mode: 'insensitive' },
                })),
            },
            include: {
                content_sections: {
                    orderBy: { sort_order: 'asc' },
                },
            },
        });
        if (!category) {
            return res.status(404).json({
                error: 'Category not found',
            });
        }
        const casinos = await prisma_1.prisma.casino.findMany({
            where: {
                status: 'active',
                categories: {
                    some: {
                        category_id: category.id,
                    },
                },
            },
            orderBy: {
                ranking_order: 'asc',
            },
            include: {
                tags: {
                    include: {
                        tag: true,
                    },
                },
                categories: {
                    include: {
                        category: true,
                    },
                },
                available_countries: {
                    include: {
                        country: true,
                    },
                },
                bonuses: {
                    where: {
                        type: 'Welcome Bonus',
                    },
                    take: 1,
                    orderBy: {
                        sort_order: 'asc',
                    },
                },
            },
        });
        return res.json({
            category,
            casinos,
        });
    }
    catch (error) {
        console.error('Error fetching category casinos:', error);
        return res.status(500).json({
            error: 'Failed to fetch category casinos',
        });
    }
});
app.get('/api/casinos', async (req, res) => {
    try {
        const { search, limit } = req.query;
        const where = { status: 'active' };
        if (search && typeof search === 'string' && search.trim() !== '') {
            const q = search.trim();
            where.OR = [
                { name: { contains: q, mode: 'insensitive' } },
                { slug: { contains: q, mode: 'insensitive' } },
                { short_description: { contains: q, mode: 'insensitive' } },
            ];
        }
        const casinos = await prisma_1.prisma.casino.findMany({
            where,
            take: limit ? parseInt(String(limit), 10) : undefined,
            orderBy: { ranking_order: 'asc' },
            include: {
                tags: {
                    include: {
                        tag: true
                    }
                },
                categories: {
                    include: {
                        category: true
                    }
                },
                available_countries: {
                    include: {
                        country: true
                    }
                },
                bonuses: {
                    where: { type: 'Welcome Bonus' },
                    take: 1,
                    orderBy: { sort_order: 'asc' }
                }
            }
        });
        res.json(casinos);
    }
    catch (err) {
        console.error("Error fetching casinos:", err);
        res.status(500).json({ error: 'Failed to fetch casinos' });
    }
});
// Public API endpoint for news
app.get('/api/news', async (req, res) => {
    try {
        const news = await prisma_1.prisma.news.findMany({
            where: { status: 'published' },
            orderBy: { published_at: 'desc' },
            take: 10,
            include: {
                author: {
                    select: {
                        name: true
                    }
                }
            }
        });
        res.json(news);
    }
    catch (err) {
        console.error("Error fetching news:", err);
        res.status(500).json({ error: 'Failed to fetch news' });
    }
});
// Public API endpoint for blogs
app.get('/api/blogs', async (req, res) => {
    try {
        const blogs = await prisma_1.prisma.blog.findMany({
            where: { status: 'published' },
            orderBy: { published_at: 'desc' },
            take: 10,
            include: {
                author: {
                    select: {
                        name: true
                    }
                }
            }
        });
        res.json(blogs);
    }
    catch (err) {
        console.error("Error fetching blogs:", err);
        res.status(500).json({ error: 'Failed to fetch blogs' });
    }
});
// Public API endpoint for FAQs
app.get('/api/faqs', async (req, res) => {
    try {
        const faqs = await prisma_1.prisma.faq.findMany({
            where: { status: true },
            orderBy: { sort_order: 'asc' },
            take: 20
        });
        res.json(faqs);
    }
    catch (err) {
        console.error("Error fetching FAQs:", err);
        res.status(500).json({ error: 'Failed to fetch FAQs' });
    }
});
app.listen(port, () => {
    console.log(`Backend API listening on port ${port}`);
});
//# sourceMappingURL=index.js.map