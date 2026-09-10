import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import { prisma } from './prisma';
import path from 'path';

dotenv.config();

const app = express();
const port = process.env.PORT || 4000;

// Build allowed origins dynamically from environment variables
const allowedOrigins: string[] = [];

// Add development localhost URLs only if in development mode
if (process.env.NODE_ENV !== 'production') {
  allowedOrigins.push('http://localhost:3000', 'http://localhost:3001');
}

// Add production frontend URL(s) from env
if (process.env.FRONTEND_URL) {
  // Support multiple comma-separated URLs e.g. "https://casinoreviewsbook.com,https://www.casinoreviewsbook.com"
  process.env.FRONTEND_URL.split(',').map(url => url.trim()).forEach(url => {
    if (url && !allowedOrigins.includes(url)) allowedOrigins.push(url);
  });
}

// Additional origins from ADDITIONAL_ORIGINS env (optional)
if (process.env.ADDITIONAL_ORIGINS) {
  process.env.ADDITIONAL_ORIGINS.split(',').map(url => url.trim()).forEach(url => {
    if (url && !allowedOrigins.includes(url)) allowedOrigins.push(url);
  });
}
console.log("NODE_ENV:", process.env.NODE_ENV);
console.log("FRONTEND_URL:", process.env.FRONTEND_URL);
console.log("Allowed Origins:", allowedOrigins);
app.use(cors({
  origin: (origin, callback) => {
    // Allow requests with no origin (e.g. mobile apps, curl, server-to-server)
    if (!origin) return callback(null, true);
    if (allowedOrigins.includes(origin)) return callback(null, true);
    callback(new Error(`CORS: origin '${origin}' not allowed`));
  },
  credentials: true,
}));
app.use(express.json());

// Serve static files from uploads directory
app.use('/uploads', express.static(path.join(process.cwd(), 'uploads')));

import emailRoutes from './routes/emailRoutes';
import casinoRoutes from './routes/casinoRoutes';
import userRoutes from './routes/userRoutes';
import blogRoutes from './routes/blogRoutes';
import newsRoutes from './routes/newsRoutes';
import reviewRoutes from './routes/reviewRoutes';
import faqRoutes from './routes/faqRoutes';
import bannerRoutes from './routes/bannerRoutes';
import affiliateLinkRoutes from './routes/affiliateLinkRoutes';
import mediaRoutes from './routes/mediaRoutes';
import settingsRoutes from './routes/settingsRoutes';
import logsRoutes from './routes/logsRoutes';
import categoryRoutes from './routes/categoryRoutes';
import tagRoutes from './routes/tagRoutes';
import countryRoutes from './routes/countryRoutes';
import gameTypeRoutes from './routes/gameTypeRoutes';
import bannedCountryRoutes from './routes/bannedCountryRoutes';
import regionRoutes from './routes/regionRoutes';
import casinoReviewRoutes from './routes/casinoReviewRoutes';
import casinoAffiliateLinkRoutes from './routes/casinoAffiliateLinkRoutes';
import { registerUser } from './controllers/userController';
import contactTicketRoutes from './routes/contactTicketRoutes';
import { createTicket, getUserTickets } from './controllers/contactTicketController';
import hasOffersPostbackRoutes from './routes/hasOffersPostbackRoutes';
import hasOffersConfigRoutes from './routes/hasOffersConfigRoutes';
import guideRoutes from './routes/guideRoutes';
import bonusSectionRoutes from './routes/bonusSectionRoutes';
import bonusRoutes from './routes/bonusRoutes';
import { getSettings } from './controllers/settingsController';
import { getCategories, getCategoryBySlug, getCategoryById } from './controllers/categoryController';

app.use('/api/admin/guides', guideRoutes);
app.use('/api/guides', guideRoutes);

app.use('/api/admin/bonus-sections', bonusSectionRoutes);
app.use('/api/bonus-sections', bonusSectionRoutes);

app.use('/api/admin/email-campaigns', emailRoutes);
app.use('/api/admin/casinos', casinoRoutes);
app.use('/api/admin/users', userRoutes);
app.use('/api/admin/blogs', blogRoutes);
app.use('/api/admin/news', newsRoutes);
app.use('/api/admin/reviews', reviewRoutes);
app.use('/api/admin/faqs', faqRoutes);
app.use('/api/admin/banners', bannerRoutes);
app.use('/api/admin/affiliate-links', affiliateLinkRoutes);
app.use('/api/admin/media', mediaRoutes);
app.use('/api/admin/settings', settingsRoutes);
app.get('/api/settings', getSettings);
app.use('/api/admin/logs', logsRoutes);
app.use('/api/admin/categories', categoryRoutes);
app.get('/api/categories', getCategories);
app.get('/api/categories/slug/:slug', getCategoryBySlug);
app.get('/api/categories/:id', getCategoryById);
app.use('/api/admin/bonuses', bonusRoutes);
app.use('/api/bonuses', bonusRoutes);
app.use('/api/admin/tags', tagRoutes);
app.use('/api/admin/countries', countryRoutes);
app.use('/api/admin/game-types', gameTypeRoutes);
app.use('/api/admin/banned-countries', bannedCountryRoutes);
app.use('/api/admin/regions', regionRoutes);
app.use('/api/admin/casino-reviews', casinoReviewRoutes);
app.use('/api/admin/casino-affiliate-links', casinoAffiliateLinkRoutes);
app.use('/api/casino-affiliate-links', casinoAffiliateLinkRoutes);
app.use('/api/admin/contact-tickets', contactTicketRoutes);
app.use('/api/casino-reviews', casinoReviewRoutes);

// HasOffers postback tracking routes
app.use('/api/hasoffers', hasOffersPostbackRoutes);
app.use('/api/admin/hasoffers', hasOffersConfigRoutes);

// Public registration endpoint
app.post('/api/register', registerUser);

// Public contact tickets endpoints
app.post('/api/contact-tickets', createTicket);
app.get('/api/contact-tickets/my-tickets', getUserTickets);



// Public endpoint: get all banned country codes (supports both /api/banned-countries and /api/api/banned-countries)
app.get(['/api/banned-countries', '/api/api/banned-countries'], async (req, res) => {
  try {
    const countries = await prisma.bannedCountry.findMany({
      select: { country_code: true }
    });
    res.json(countries.map(c => c.country_code));
  } catch (err) {
    console.error("Error fetching banned countries:", err);
    res.status(500).json({ error: 'Failed to fetch banned countries' });
  }
});

import {
  getCasinoBySlug,
  getSimilarCasinos,
} from './controllers/casinoController';
// Public API endpoint for frontend
app.get('/api/casinos/slug/:slug/similar', getSimilarCasinos);
app.get('/api/casinos/slug/:slug', getCasinoBySlug);
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

    const category = await prisma.casinoCategory.findFirst({
      where: {
        OR: variations.map((v) => ({
          slug: { equals: v, mode: 'insensitive' as const },
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

    const casinos = await prisma.casino.findMany({
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
  } catch (error) {
    console.error('Error fetching category casinos:', error);

    return res.status(500).json({
      error: 'Failed to fetch category casinos',
    });
  }
});
app.get('/api/casinos', async (req, res) => {
  try {
    const { search, limit } = req.query;
    const where: any = { status: 'active' };

    if (search && typeof search === 'string' && search.trim() !== '') {
      const q = search.trim();
      where.OR = [
        { name: { contains: q, mode: 'insensitive' } },
        { slug: { contains: q, mode: 'insensitive' } },
        { short_description: { contains: q, mode: 'insensitive' } },
      ];
    }

    const casinos = await prisma.casino.findMany({
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
  } catch (err) {
    console.error("Error fetching casinos:", err);
    res.status(500).json({ error: 'Failed to fetch casinos' });
  }
});

// Public API endpoint for news
app.get('/api/news', async (req, res) => {
  try {
    const news = await prisma.news.findMany({
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
  } catch (err) {
    console.error("Error fetching news:", err);
    res.status(500).json({ error: 'Failed to fetch news' });
  }
});

// Public API endpoint for blogs
app.get('/api/blogs', async (req, res) => {
  try {
    const blogs = await prisma.blog.findMany({
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
  } catch (err) {
    console.error("Error fetching blogs:", err);
    res.status(500).json({ error: 'Failed to fetch blogs' });
  }
});

// Public API endpoint for FAQs
app.get('/api/faqs', async (req, res) => {
  try {
    const faqs = await prisma.faq.findMany({
      where: { status: true },
      orderBy: { sort_order: 'asc' },
      take: 20
    });
    res.json(faqs);
  } catch (err) {
    console.error("Error fetching FAQs:", err);
    res.status(500).json({ error: 'Failed to fetch FAQs' });
  }
});

app.listen(port, () => {
  console.log(`Backend API listening on port ${port}`);
});
