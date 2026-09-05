import { Request, Response } from 'express';
import { prisma } from '../prisma';

export const getBonusSections = async (req: Request, res: Response): Promise<void> => {
  try {
    const { status, all } = req.query;

    const where: any = {};
    if (all !== 'true' && !status) {
      where.status = 'active';
    } else if (status) {
      where.status = String(status);
    }

    const sections = await (prisma as any).bonusSection.findMany({
      where,
      orderBy: { sort_order: 'asc' },
      include: {
        items: {
          orderBy: { sort_order: 'asc' },
          include: {
            casino: {
              include: {
                payment_methods: true,
                badges: {
                  include: {
                    badge: true,
                  },
                },
                tags: {
                  include: {
                    tag: true,
                  },
                },
                features: true,
              },
            },
          },
        },
      },
    });

    res.json(sections);
  } catch (error: any) {
    console.error('Error fetching bonus sections:', error);
    res.status(500).json({ error: error?.message || 'Failed to fetch bonus sections' });
  }
};

export const getBonusSectionBySlug = async (req: Request, res: Response): Promise<void> => {
  try {
    const { slug } = req.params;

    const section = await (prisma as any).bonusSection.findUnique({
      where: { slug },
      include: {
        items: {
          orderBy: { sort_order: 'asc' },
          include: {
            casino: {
              include: {
                payment_methods: true,
                badges: {
                  include: {
                    badge: true,
                  },
                },
              },
            },
          },
        },
      },
    });

    if (!section) {
      res.status(404).json({ error: 'Bonus section not found' });
      return;
    }

    res.json(section);
  } catch (error: any) {
    console.error('Error fetching bonus section by slug:', error);
    res.status(500).json({ error: error?.message || 'Failed to fetch bonus section' });
  }
};

export const getBonusSectionById = async (req: Request, res: Response): Promise<void> => {
  try {
    const { id } = req.params;

    const section = await (prisma as any).bonusSection.findUnique({
      where: { id },
      include: {
        items: {
          orderBy: { sort_order: 'asc' },
          include: {
            casino: true,
          },
        },
      },
    });

    if (!section) {
      res.status(404).json({ error: 'Bonus section not found' });
      return;
    }

    res.json(section);
  } catch (error: any) {
    console.error('Error fetching bonus section by id:', error);
    res.status(500).json({ error: error?.message || 'Failed to fetch bonus section' });
  }
};

export const createBonusSection = async (req: Request, res: Response): Promise<void> => {
  try {
    const {
      title,
      slug: customSlug,
      badge_text,
      description,
      icon_name,
      sort_order,
      status,
      items,
    } = req.body;

    if (!title || !title.trim()) {
      res.status(400).json({ error: 'Section Title is required' });
      return;
    }

    let slug = customSlug && customSlug.trim()
      ? customSlug.toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '')
      : title.toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');

    if (!slug) {
      slug = `bonus-section-${Date.now()}`;
    }

    // Ensure unique slug
    let existing = await (prisma as any).bonusSection.findUnique({ where: { slug } });
    let counter = 1;
    const baseSlug = slug;
    while (existing) {
      slug = `${baseSlug}-${counter}`;
      existing = await (prisma as any).bonusSection.findUnique({ where: { slug } });
      counter++;
    }

    const safeSort =
      sort_order !== undefined && !isNaN(parseInt(String(sort_order), 10))
        ? parseInt(String(sort_order), 10)
        : 0;

    // Create the section first
    const section = await (prisma as any).bonusSection.create({
      data: {
        title: title.trim(),
        slug,
        badge_text: badge_text && badge_text.trim() ? badge_text.trim() : null,
        description: description && description.trim() ? description.trim() : null,
        icon_name: icon_name && icon_name.trim() ? icon_name.trim() : 'Gift',
        sort_order: safeSort,
        status: status || 'active',
      },
    });

    // Create items if any
    if (Array.isArray(items) && items.length > 0) {
      for (let i = 0; i < items.length; i++) {
        const item = items[i];
        if (item.casino_id) {
          await (prisma as any).bonusSectionItem.create({
            data: {
              section_id: section.id,
              casino_id: item.casino_id,
              custom_title: item.custom_title && item.custom_title.trim() ? item.custom_title.trim() : null,
              bonus_code: item.bonus_code && item.bonus_code.trim() ? item.bonus_code.trim() : null,
              wagering_requirement: item.wagering_requirement && item.wagering_requirement.trim() ? item.wagering_requirement.trim() : null,
              min_deposit: item.min_deposit && item.min_deposit.trim() ? item.min_deposit.trim() : null,
              exclusive: Boolean(item.exclusive),
              highlight_badge: item.highlight_badge && item.highlight_badge.trim() ? item.highlight_badge.trim() : null,
              claim_url: item.claim_url && item.claim_url.trim() ? item.claim_url.trim() : null,
              sort_order: item.sort_order !== undefined && !isNaN(parseInt(String(item.sort_order), 10)) ? parseInt(String(item.sort_order), 10) : i,
            },
          });
        }
      }
    }

    const createdWithItems = await (prisma as any).bonusSection.findUnique({
      where: { id: section.id },
      include: {
        items: {
          orderBy: { sort_order: 'asc' },
          include: {
            casino: true,
          },
        },
      },
    });

    res.status(201).json(createdWithItems);
  } catch (error: any) {
    console.error('Error creating bonus section:', error);
    res.status(500).json({ error: error?.message || 'Failed to create bonus section' });
  }
};

export const updateBonusSection = async (req: Request, res: Response): Promise<void> => {
  try {
    const { id } = req.params;
    const {
      title,
      slug: customSlug,
      badge_text,
      description,
      icon_name,
      sort_order,
      status,
      items,
    } = req.body;

    const updateData: any = {};
    if (title !== undefined) updateData.title = title.trim();
    if (customSlug !== undefined && customSlug.trim()) {
      updateData.slug = customSlug.toLowerCase().trim().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');
    }
    if (badge_text !== undefined) updateData.badge_text = badge_text ? badge_text.trim() : null;
    if (description !== undefined) updateData.description = description ? description.trim() : null;
    if (icon_name !== undefined) updateData.icon_name = icon_name ? icon_name.trim() : 'Gift';
    if (status !== undefined) updateData.status = status;
    if (sort_order !== undefined) {
      updateData.sort_order = !isNaN(parseInt(String(sort_order), 10)) ? parseInt(String(sort_order), 10) : 0;
    }

    // First update the section fields
    await (prisma as any).bonusSection.update({
      where: { id },
      data: updateData,
    });

    // If items were passed, replace existing items
    if (Array.isArray(items)) {
      // Delete old items
      await (prisma as any).bonusSectionItem.deleteMany({
        where: { section_id: id },
      });

      // Insert new items
      if (items.length > 0) {
        const validItems = items
          .filter((item: any) => item.casino_id)
          .map((item: any, idx: number) => ({
            section_id: id,
            casino_id: item.casino_id,
            custom_title: item.custom_title ? item.custom_title.trim() : null,
            bonus_code: item.bonus_code ? item.bonus_code.trim() : null,
            wagering_requirement: item.wagering_requirement ? item.wagering_requirement.trim() : null,
            min_deposit: item.min_deposit ? item.min_deposit.trim() : null,
            exclusive: Boolean(item.exclusive),
            highlight_badge: item.highlight_badge ? item.highlight_badge.trim() : null,
            claim_url: item.claim_url ? item.claim_url.trim() : null,
            sort_order: item.sort_order !== undefined ? parseInt(String(item.sort_order), 10) : idx,
          }));

        if (validItems.length > 0) {
          await (prisma as any).bonusSectionItem.createMany({
            data: validItems,
          });
        }
      }
    }

    const updated = await (prisma as any).bonusSection.findUnique({
      where: { id },
      include: {
        items: {
          orderBy: { sort_order: 'asc' },
          include: {
            casino: true,
          },
        },
      },
    });

    res.json(updated);
  } catch (error: any) {
    console.error('Error updating bonus section:', error);
    res.status(500).json({ error: error?.message || 'Failed to update bonus section' });
  }
};

export const deleteBonusSection = async (req: Request, res: Response): Promise<void> => {
  try {
    const { id } = req.params;

    await (prisma as any).bonusSection.delete({
      where: { id },
    });

    res.json({ message: 'Bonus section deleted successfully' });
  } catch (error: any) {
    console.error('Error deleting bonus section:', error);
    res.status(500).json({ error: error?.message || 'Failed to delete bonus section' });
  }
};
