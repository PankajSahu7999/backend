import { Request, Response } from 'express';
import { prisma } from '../prisma';

/**
 * Handle incoming HasOffers postback requests
 * This endpoint receives conversion notifications from HasOffers networks
 */
export const handlePostback = async (req: Request, res: Response) => {
  try {
    const {
      transaction_id,
      offer_id,
      affiliate_id,
      aff_sub,
      aff_sub2,
      aff_sub3,
      aff_sub4,
      aff_sub5,
      payout,
      sale_amount,
      amount, // alternative parameter name for sale_amount
      revenue, // alternative parameter name for payout
      ip,
      user_agent,
      country,
      referring_url,
      status = 'pending',
      conversion_type = 'lead'
    } = req.query;

    // Validate required fields
    if (!transaction_id) {
      return res.status(400).json({ error: 'Missing required field: transaction_id' });
    }

    // Parse numeric values
    const payoutValue = payout || revenue ? parseFloat((payout || revenue) as string) : null;
    const saleAmountValue = sale_amount || amount ? parseFloat((sale_amount || amount) as string) : null;

    // Find the click by aff_sub (which contains our click_id)
    let click = null;
    if (aff_sub) {
      click = await prisma.hasOffersClick.findUnique({
        where: { click_id: aff_sub as string },
        include: { casino: true }
      });
    }

    // If no click found, try to find by transaction_id
    if (!click && transaction_id) {
      click = await prisma.hasOffersClick.findFirst({
        where: { transaction_id: transaction_id as string },
        include: { casino: true }
      });
    }

    // If still no click, we need to determine the casino from the offer_id
    let casino = null;
    let config = null;

    if (click) {
      casino = click.casino;
      config = await prisma.hasOffersPostbackConfig.findFirst({
        where: {
          casino_id: casino.id,
          offer_id: offer_id as string,
          status: 'active'
        }
      });
    } else {
      // Try to find config by offer_id
      config = await prisma.hasOffersPostbackConfig.findFirst({
        where: {
          offer_id: offer_id as string,
          status: 'active'
        },
        include: { casino: true }
      });
      if (config) {
        casino = config.casino;
      }
    }

    if (!casino) {
      console.error(`Postback failed: No casino found for offer_id ${offer_id} and transaction_id ${transaction_id}`);
      return res.status(404).json({ error: 'Casino not found for this conversion' });
    }

    // Check if conversion already exists
    const existingConversion = await prisma.hasOffersConversion.findUnique({
      where: { transaction_id: transaction_id as string }
    });

    if (existingConversion) {
      // Update existing conversion
      const updatedConversion = await prisma.hasOffersConversion.update({
        where: { transaction_id: transaction_id as string },
        data: {
          status: status as string,
          payout: payoutValue,
          sale_amount: saleAmountValue,
          updated_at: new Date()
        }
      });
      return res.status(200).json({ success: true, conversion: updatedConversion, updated: true });
    }

    // Create new conversion
    const conversion = await prisma.hasOffersConversion.create({
      data: {
        config_id: config?.id,
        casino_id: casino.id,
        transaction_id: transaction_id as string,
        offer_id: offer_id as string,
        affiliate_id: affiliate_id as string || undefined,
        aff_sub: aff_sub as string || undefined,
        aff_sub2: aff_sub2 as string || undefined,
        aff_sub3: aff_sub3 as string || undefined,
        aff_sub4: aff_sub4 as string || undefined,
        aff_sub5: aff_sub5 as string || undefined,
        conversion_type: conversion_type as string,
        payout: payoutValue,
        sale_amount: saleAmountValue,
        status: status as string,
        ip_address: ip as string || undefined,
        user_agent: user_agent as string || undefined,
        country: country as string || undefined,
        referring_url: referring_url as string || undefined,
        conversion_time: new Date()
      }
    });

    // Update click with conversion timestamp
    if (click) {
      await prisma.hasOffersClick.update({
        where: { id: click.id },
        data: {
          transaction_id: transaction_id as string,
          conversion_received_at: new Date()
        }
      });
    }

    res.status(200).json({ success: true, conversion, created: true });
  } catch (error) {
    console.error('Error handling postback:', error);
    res.status(500).json({ error: 'Failed to process postback' });
  }
};

/**
 * Generate a tracking click with HasOffers parameters
 * This should be called when a user clicks on a casino affiliate link
 */
export const generateTrackingClick = async (req: Request, res: Response) => {
  try {
    const { casino_id, user_id, ip_address, user_agent, country, source } = req.body;

    if (!casino_id) {
      return res.status(400).json({ error: 'Missing required field: casino_id' });
    }

    // Generate unique click ID
    const click_id = `clk_${Date.now()}_${Math.random().toString(36).substring(2, 11)}`;

    const click = await prisma.hasOffersClick.create({
      data: {
        casino_id,
        user_id: user_id || undefined,
        click_id,
        ip_address: ip_address || undefined,
        user_agent: user_agent || undefined,
        country: country || undefined,
        source: source || undefined,
        clicked_at: new Date()
      },
      include: {
        casino: true
      }
    });

    // Get active HasOffers config for this casino
    const config = await prisma.hasOffersPostbackConfig.findFirst({
      where: {
        casino_id,
        status: 'active'
      }
    });

    // Generate affiliate URL with tracking parameters
    let affiliateUrl = click.casino.affiliate_url || click.casino.default_affiliate_url;
    
    if (config && affiliateUrl) {
      // Append HasOffers tracking parameters
      const separator = affiliateUrl.includes('?') ? '&' : '?';
      affiliateUrl = `${affiliateUrl}${separator}aff_sub=${click_id}`;
      
      // If we have the network's offer URL format, use it
      if (config.network_domain && config.offer_id) {
        affiliateUrl = `https://${config.network_domain}/aff_c?offer_id=${config.offer_id}&aff_sub=${click_id}`;
      }
    }

    res.status(201).json({
      click,
      tracking_url: affiliateUrl,
      click_id
    });
  } catch (error) {
    console.error('Error generating tracking click:', error);
    res.status(500).json({ error: 'Failed to generate tracking click' });
  }
};

/**
 * Get conversions for a specific casino
 */
export const getCasinoConversions = async (req: Request, res: Response) => {
  try {
    const casinoId = String(req.params.casinoId);
    const { status, start_date, end_date, limit = 50, offset = 0 } = req.query;

    const where: any = { casino_id: casinoId };

    if (status) {
      where.status = status;
    }

    if (start_date || end_date) {
      where.conversion_time = {};
      if (start_date) {
        where.conversion_time.gte = new Date(start_date as string);
      }
      if (end_date) {
        where.conversion_time.lte = new Date(end_date as string);
      }
    }

    const conversions = await prisma.hasOffersConversion.findMany({
      where,
      include: {
        config: true,
        casino: true
      },
      orderBy: { conversion_time: 'desc' },
      take: parseInt(limit as string),
      skip: parseInt(offset as string)
    });

    const total = await prisma.hasOffersConversion.count({ where });

    res.json({
      conversions,
      pagination: {
        total,
        limit: parseInt(limit as string),
        offset: parseInt(offset as string)
      }
    });
  } catch (error) {
    console.error('Error fetching conversions:', error);
    res.status(500).json({ error: 'Failed to fetch conversions' });
  }
};

/**
 * Get conversion analytics
 */
export const getConversionAnalytics = async (req: Request, res: Response) => {
  try {
    const casinoId = String(req.params.casinoId);
    const { start_date, end_date } = req.query;

    const where: any = { casino_id: casinoId };

    if (start_date || end_date) {
      where.conversion_time = {};
      if (start_date) {
        where.conversion_time.gte = new Date(start_date as string);
      }
      if (end_date) {
        where.conversion_time.lte = new Date(end_date as string);
      }
    }

    // Get conversion counts by status
    const statusCounts = await prisma.hasOffersConversion.groupBy({
      by: ['status'],
      where,
      _count: true,
      _sum: {
        payout: true,
        sale_amount: true
      }
    });

    // Get conversion counts by type
    const typeCounts = await prisma.hasOffersConversion.groupBy({
      by: ['conversion_type'],
      where,
      _count: true,
      _sum: {
        payout: true,
        sale_amount: true
      }
    });

    // Total conversions
    const totalConversions = await prisma.hasOffersConversion.count({ where });

    // Total revenue and payout
    const totals = await prisma.hasOffersConversion.aggregate({
      where,
      _sum: {
        payout: true,
        sale_amount: true
      }
    });

    // Click to conversion rate
    const totalClicks = await prisma.hasOffersClick.count({
      where: { casino_id: casinoId }
    });

    const conversionRate = totalClicks > 0 
      ? (totalConversions / totalClicks) * 100 
      : 0;

    res.json({
      overview: {
        total_conversions: totalConversions,
        total_clicks: totalClicks,
        conversion_rate: parseFloat(conversionRate.toFixed(2)),
        total_revenue: totals._sum.sale_amount || 0,
        total_payout: totals._sum.payout || 0
      },
      by_status: statusCounts,
      by_type: typeCounts
    });
  } catch (error) {
    console.error('Error fetching conversion analytics:', error);
    res.status(500).json({ error: 'Failed to fetch conversion analytics' });
  }
};