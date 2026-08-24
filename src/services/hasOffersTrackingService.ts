import { prisma } from '../prisma';

/**
 * Service for HasOffers tracking and URL generation
 */
export class HasOffersTrackingService {
  /**
   * Generate a tracking click ID and return the tracking URL
   * This should be called when a user clicks on a casino affiliate link
   */
  static async generateTrackingClick(params: {
    casino_id: string;
    user_id?: string;
    ip_address?: string;
    user_agent?: string;
    country?: string;
    source?: string;
  }) {
    const { casino_id, user_id, ip_address, user_agent, country, source } = params;

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

    return click;
  }

  /**
   * Generate the HasOffers affiliate URL with tracking parameters
   */
  static async generateAffiliateUrl(click_id: string, casino_id: string) {
    const click = await prisma.hasOffersClick.findUnique({
      where: { click_id },
      include: { casino: true }
    });

    if (!click) {
      throw new Error('Click not found');
    }

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

    return affiliateUrl;
  }

  /**
   * Generate postback URL for HasOffers network configuration
   * This URL should be provided to the HasOffers network
   */
  static generatePostbackUrl(baseUrl: string, casino_id: string): string {
    // Remove trailing slash if present
    const cleanBaseUrl = baseUrl.replace(/\/$/, '');
    return `${cleanBaseUrl}/api/hasoffers/postback`;
  }

  /**
   * Get tracking parameters for a click
   */
  static async getTrackingParameters(click_id: string) {
    const click = await prisma.hasOffersClick.findUnique({
      where: { click_id },
      include: {
        casino: {
          include: {
            hasoffers_configs: {
              where: { status: 'active' },
              take: 1
            }
          }
        }
      }
    });

    if (!click) {
      throw new Error('Click not found');
    }

    const config = click.casino.hasoffers_configs[0];
    
    return {
      click_id: click.click_id,
      casino_id: click.casino_id,
      casino_name: click.casino.name,
      affiliate_url: click.casino.affiliate_url,
      tracking_url: config ? this.generateAffiliateUrl(click_id, click.casino_id) : null,
      parameters: {
        aff_sub: click_id,
        aff_sub2: click.source || undefined,
        aff_sub3: click.country || undefined,
        aff_sub4: click.user_agent ? click.user_agent.substring(0, 100) : undefined,
        aff_sub5: click.ip_address || undefined
      }
    };
  }

  /**
   * Record a conversion from postback
   */
  static async recordConversion(params: {
    transaction_id: string;
    offer_id: string;
    affiliate_id?: string;
    aff_sub?: string;
    aff_sub2?: string;
    aff_sub3?: string;
    aff_sub4?: string;
    aff_sub5?: string;
    conversion_type?: string;
    payout?: number;
    sale_amount?: number;
    status?: string;
    ip_address?: string;
    user_agent?: string;
    country?: string;
    referring_url?: string;
  }) {
    const {
      transaction_id,
      offer_id,
      affiliate_id,
      aff_sub,
      aff_sub2,
      aff_sub3,
      aff_sub4,
      aff_sub5,
      conversion_type = 'lead',
      payout,
      sale_amount,
      status = 'pending',
      ip_address,
      user_agent,
      country,
      referring_url
    } = params;

    // Find the click by aff_sub (which contains our click_id)
    let click = null;
    if (aff_sub) {
      click = await prisma.hasOffersClick.findUnique({
        where: { click_id: aff_sub },
        include: { casino: true }
      });
    }

    // If no click found, try to find by transaction_id
    if (!click && transaction_id) {
      click = await prisma.hasOffersClick.findFirst({
        where: { transaction_id },
        include: { casino: true }
      });
    }

    // If still no click, determine the casino from the offer_id
    let casino = null;
    let config = null;

    if (click) {
      casino = click.casino;
      config = await prisma.hasOffersPostbackConfig.findFirst({
        where: {
          casino_id: casino.id,
          offer_id,
          status: 'active'
        }
      });
    } else {
      // Try to find config by offer_id
      config = await prisma.hasOffersPostbackConfig.findFirst({
        where: {
          offer_id,
          status: 'active'
        },
        include: { casino: true }
      });
      if (config) {
        casino = config.casino;
      }
    }

    if (!casino) {
      throw new Error(`Casino not found for offer_id ${offer_id}`);
    }

    // Check if conversion already exists
    const existingConversion = await prisma.hasOffersConversion.findUnique({
      where: { transaction_id }
    });

    if (existingConversion) {
      // Update existing conversion
      return await prisma.hasOffersConversion.update({
        where: { transaction_id },
        data: {
          status,
          payout: payout || undefined,
          sale_amount: sale_amount || undefined,
          updated_at: new Date()
        }
      });
    }

    // Create new conversion
    const conversion = await prisma.hasOffersConversion.create({
      data: {
        config_id: config?.id,
        casino_id: casino.id,
        transaction_id,
        offer_id,
        affiliate_id: affiliate_id || undefined,
        aff_sub: aff_sub || undefined,
        aff_sub2: aff_sub2 || undefined,
        aff_sub3: aff_sub3 || undefined,
        aff_sub4: aff_sub4 || undefined,
        aff_sub5: aff_sub5 || undefined,
        conversion_type,
        payout: payout || undefined,
        sale_amount: sale_amount || undefined,
        status,
        ip_address: ip_address || undefined,
        user_agent: user_agent || undefined,
        country: country || undefined,
        referring_url: referring_url || undefined,
        conversion_time: new Date()
      }
    });

    // Update click with conversion timestamp
    if (click) {
      await prisma.hasOffersClick.update({
        where: { id: click.id },
        data: {
          transaction_id,
          conversion_received_at: new Date()
        }
      });
    }

    return conversion;
  }

  /**
   * Get conversion statistics for a casino
   */
  static async getCasinoStats(casino_id: string, dateRange?: { start: Date; end: Date }) {
    const where: any = { casino_id };

    if (dateRange) {
      where.conversion_time = {
        gte: dateRange.start,
        lte: dateRange.end
      };
    }

    const [
      totalConversions,
      totalRevenue,
      totalPayout,
      statusCounts,
      typeCounts,
      recentConversions
    ] = await Promise.all([
      prisma.hasOffersConversion.count({ where }),
      prisma.hasOffersConversion.aggregate({
        where,
        _sum: { sale_amount: true }
      }),
      prisma.hasOffersConversion.aggregate({
        where,
        _sum: { payout: true }
      }),
      prisma.hasOffersConversion.groupBy({
        by: ['status'],
        where,
        _count: true
      }),
      prisma.hasOffersConversion.groupBy({
        by: ['conversion_type'],
        where,
        _count: true
      }),
      prisma.hasOffersConversion.findMany({
        where,
        take: 10,
        orderBy: { conversion_time: 'desc' }
      })
    ]);

    const totalClicks = await prisma.hasOffersClick.count({
      where: { casino_id }
    });

    return {
      overview: {
        total_conversions: totalConversions,
        total_clicks: totalClicks,
        conversion_rate: totalClicks > 0 ? (totalConversions / totalClicks) * 100 : 0,
        total_revenue: totalRevenue._sum.sale_amount || 0,
        total_payout: totalPayout._sum.payout || 0
      },
      by_status: statusCounts,
      by_type: typeCounts,
      recent_conversions: recentConversions
    };
  }
}