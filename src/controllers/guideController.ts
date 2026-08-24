import { Request, Response } from 'express';
import { prisma } from '../prisma';

export const getGuides = async (req: Request, res: Response): Promise<void> => {
  try {
    const { category, status, search, limit, page } = req.query;

    const where: any = {};

    if (category && category !== 'All' && category !== 'all') {
      where.category = {
        equals: String(category),
        mode: 'insensitive',
      };
    }

    if (status) {
      where.status = String(status);
    }

    if (search) {
      where.OR = [
        { title: { contains: String(search), mode: 'insensitive' } },
        { excerpt: { contains: String(search), mode: 'insensitive' } },
        { category: { contains: String(search), mode: 'insensitive' } },
      ];
    }

    const take = limit ? parseInt(String(limit), 10) : undefined;
    const skip = page && limit ? (parseInt(String(page), 10) - 1) * take! : undefined;

    const [guides, total] = await Promise.all([
      (prisma as any).guide.findMany({
        where,
        orderBy: [{ sort_order: 'asc' }, { published_at: 'desc' }],
        take,
        skip,
      }),
      (prisma as any).guide.count({ where }),
    ]);

    res.json({
      guides,
      total,
      page: page ? parseInt(String(page), 10) : 1,
      limit: take || total,
    });
  } catch (error) {
    console.error('Error fetching guides:', error);
    res.status(500).json({ error: 'Failed to fetch guides' });
  }
};

export const getGuideCategories = async (req: Request, res: Response): Promise<void> => {
  try {
    const guides = await (prisma as any).guide.findMany({
      where: { status: 'published' },
      select: { category: true },
    });

    const categoryMap: Record<string, number> = {};
    guides.forEach((g: any) => {
      if (g.category) {
        categoryMap[g.category] = (categoryMap[g.category] || 0) + 1;
      }
    });

    const categories = Object.entries(categoryMap).map(([name, count]) => ({
      name,
      count,
    }));

    res.json(categories);
  } catch (error) {
    console.error('Error fetching guide categories:', error);
    res.status(500).json({ error: 'Failed to fetch categories' });
  }
};

export const getGuideBySlug = async (req: Request, res: Response): Promise<void> => {
  try {
    const { slug } = req.params;

    const guide = await (prisma as any).guide.findUnique({
      where: { slug },
    });

    if (!guide) {
      res.status(404).json({ error: 'Guide not found' });
      return;
    }

    // Fetch related guides in same category
    const relatedGuides = await (prisma as any).guide.findMany({
      where: {
        category: guide.category,
        slug: { not: guide.slug },
        status: 'published',
      },
      take: 4,
      orderBy: { published_at: 'desc' },
    });

    res.json({ guide, relatedGuides });
  } catch (error) {
    console.error('Error fetching guide by slug:', error);
    res.status(500).json({ error: 'Failed to fetch guide' });
  }
};

export const getGuideById = async (req: Request, res: Response): Promise<void> => {
  try {
    const { id } = req.params;

    const guide = await (prisma as any).guide.findUnique({
      where: { id },
    });

    if (!guide) {
      res.status(404).json({ error: 'Guide not found' });
      return;
    }

    res.json(guide);
  } catch (error) {
    console.error('Error fetching guide by id:', error);
    res.status(500).json({ error: 'Failed to fetch guide' });
  }
};

export const createGuide = async (req: Request, res: Response): Promise<void> => {
  try {
    const {
      title,
      slug: customSlug,
      category,
      excerpt,
      content,
      featured_image,
      meta_title,
      meta_description,
      status,
      published_at,
      author_name,
      sort_order,
    } = req.body;

    if (!title || !title.trim()) {
      res.status(400).json({ error: 'Title is required' });
      return;
    }

    if (!category || !category.trim()) {
      res.status(400).json({ error: 'Category is required' });
      return;
    }

    let slug = customSlug && customSlug.trim()
      ? customSlug.toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '')
      : title.toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');

    if (!slug) {
      slug = `guide-${Date.now()}`;
    }

    // Ensure unique slug
    let existing = await (prisma as any).guide.findUnique({ where: { slug } });
    let counter = 1;
    const baseSlug = slug;
    while (existing) {
      slug = `${baseSlug}-${counter}`;
      existing = await (prisma as any).guide.findUnique({ where: { slug } });
      counter++;
    }

    const safeDate =
      published_at && !isNaN(new Date(published_at).getTime())
        ? new Date(published_at)
        : new Date();

    const safeSort =
      sort_order !== undefined && !isNaN(parseInt(String(sort_order), 10))
        ? parseInt(String(sort_order), 10)
        : 0;

    const guide = await (prisma as any).guide.create({
      data: {
        title: title.trim(),
        slug,
        category: category.trim(),
        excerpt: excerpt ? excerpt.trim() : null,
        content: content ? content.trim() : null,
        featured_image: featured_image ? featured_image.trim() : null,
        meta_title: meta_title ? meta_title.trim() : `${title.trim()} | Casino Guides`,
        meta_description: meta_description ? meta_description.trim() : excerpt ? excerpt.trim() : null,
        status: status || 'published',
        published_at: safeDate,
        author_name: author_name ? author_name.trim() : 'Casino Expert',
        sort_order: safeSort,
      },
    });

    res.status(201).json(guide);
  } catch (error: any) {
    console.error('Error creating guide:', error);
    res.status(500).json({ error: error?.message || 'Failed to create guide' });
  }
};

export const updateGuide = async (req: Request, res: Response): Promise<void> => {
  try {
    const { id } = req.params;
    const {
      title,
      slug,
      category,
      excerpt,
      content,
      featured_image,
      meta_title,
      meta_description,
      status,
      published_at,
      author_name,
      sort_order,
    } = req.body;

    const data: any = {};
    if (title !== undefined) data.title = title.trim();
    if (slug !== undefined && slug.trim()) {
      data.slug = slug.toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');
    }
    if (category !== undefined) data.category = category.trim();
    if (excerpt !== undefined) data.excerpt = excerpt ? excerpt.trim() : null;
    if (content !== undefined) data.content = content ? content.trim() : null;
    if (featured_image !== undefined) data.featured_image = featured_image ? featured_image.trim() : null;
    if (meta_title !== undefined) data.meta_title = meta_title ? meta_title.trim() : null;
    if (meta_description !== undefined) data.meta_description = meta_description ? meta_description.trim() : null;
    if (status !== undefined) data.status = status;
    if (published_at !== undefined) {
      data.published_at =
        published_at && !isNaN(new Date(published_at).getTime())
          ? new Date(published_at)
          : new Date();
    }
    if (author_name !== undefined) data.author_name = author_name ? author_name.trim() : 'Casino Expert';
    if (sort_order !== undefined) {
      data.sort_order = !isNaN(parseInt(String(sort_order), 10)) ? parseInt(String(sort_order), 10) : 0;
    }

    const guide = await (prisma as any).guide.update({
      where: { id },
      data,
    });

    res.json(guide);
  } catch (error: any) {
    console.error('Error updating guide:', error);
    res.status(500).json({ error: error?.message || 'Failed to update guide' });
  }
};

export const deleteGuide = async (req: Request, res: Response): Promise<void> => {
  try {
    const { id } = req.params;

    await (prisma as any).guide.delete({
      where: { id },
    });

    res.json({ message: 'Guide deleted successfully' });
  } catch (error) {
    console.error('Error deleting guide:', error);
    res.status(500).json({ error: 'Failed to delete guide' });
  }
};
