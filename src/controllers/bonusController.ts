import { Request, Response } from 'express';
import { prisma } from '../prisma';

export const getBonuses = async (req: Request, res: Response): Promise<void> => {
  try {
    const { type, casino_id, limit, search } = req.query;
    const where: any = {};

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

    const bonuses = await prisma.casinoBonus.findMany({
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
  } catch (error) {
    console.error('Error fetching bonuses:', error);
    res.status(500).json({ error: 'Failed to fetch bonuses' });
  }
};

export const getBonusById = async (req: Request, res: Response): Promise<void> => {
  try {
    const id = String(req.params.id);
    const bonus = await prisma.casinoBonus.findUnique({
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
  } catch (error) {
    console.error('Error fetching bonus by id:', error);
    res.status(500).json({ error: 'Failed to fetch bonus' });
  }
};

export const createBonus = async (req: Request, res: Response): Promise<void> => {
  try {
    const { casino_id, title, type, amount, bonus_code, wagering_requirement, sort_order } = req.body;
    const bonus = await prisma.casinoBonus.create({
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
  } catch (error) {
    console.error('Error creating bonus:', error);
    res.status(500).json({ error: 'Failed to create bonus' });
  }
};

export const updateBonus = async (req: Request, res: Response): Promise<void> => {
  try {
    const id = String(req.params.id);
    const { title, type, amount, bonus_code, wagering_requirement, sort_order } = req.body;
    const bonus = await prisma.casinoBonus.update({
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
  } catch (error) {
    console.error('Error updating bonus:', error);
    res.status(500).json({ error: 'Failed to update bonus' });
  }
};

export const deleteBonus = async (req: Request, res: Response): Promise<void> => {
  try {
    const id = String(req.params.id);
    await prisma.casinoBonus.delete({
      where: { id },
    });
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting bonus:', error);
    res.status(500).json({ error: 'Failed to delete bonus' });
  }
};
