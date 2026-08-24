import { HasOffersTrackingService } from '../src/services/hasOffersTrackingService';
import { prisma } from '../src/prisma';

/**
 * Test script for HasOffers postback tracking
 * This demonstrates how the tracking system works
 */

async function testHasOffersTracking() {
  console.log('Starting HasOffers Tracking Test...\n');

  try {
    // 1. Get a test casino
    const casino = await prisma.casino.findFirst({
      where: { status: 'active' }
    });

    if (!casino) {
      console.error('No active casino found for testing');
      return;
    }

    console.log(`Test Casino: ${casino.name} (ID: ${casino.id})\n`);

    // 2. Create a HasOffers configuration for this casino
    const config = await prisma.hasOffersPostbackConfig.create({
      data: {
        casino_id: casino.id,
        network_domain: 'test-network.go2cloud.org',
        offer_id: '123',
        postback_url: 'http://localhost:4000/api/hasoffers/postback',
        status: 'active',
        notes: 'Test configuration for HasOffers tracking'
      }
    });

    console.log(`Created HasOffers Config: ${config.id}\n`);

    // 3. Simulate a user click
    const click = await HasOffersTrackingService.generateTrackingClick({
      casino_id: casino.id,
      ip_address: '192.168.1.1',
      user_agent: 'Mozilla/5.0 (Test Browser)',
      country: 'US',
      source: 'google'
    });

    console.log(`Generated Click: ${click.click_id}`);
    console.log(`Click ID: ${click.click_id}`);
    console.log(`Clicked at: ${click.clicked_at}\n`);

    // 4. Generate affiliate URL with tracking parameters
    const affiliateUrl = await HasOffersTrackingService.generateAffiliateUrl(
      click.click_id,
      casino.id
    );

    console.log(`Generated Affiliate URL: ${affiliateUrl}\n`);

    // 5. Get tracking parameters
    const trackingParams = await HasOffersTrackingService.getTrackingParameters(click.click_id);
    console.log('Tracking Parameters:', JSON.stringify(trackingParams, null, 2));
    console.log();

    // 6. Simulate a postback conversion
    const conversion = await HasOffersTrackingService.recordConversion({
      transaction_id: `txn_${Date.now()}`,
      offer_id: '123',
      affiliate_id: 'affiliate_123',
      aff_sub: click.click_id,
      aff_sub2: 'google',
      aff_sub3: 'US',
      conversion_type: 'sale',
      payout: 25.00,
      sale_amount: 100.00,
      status: 'approved',
      ip_address: '192.168.1.1',
      user_agent: 'Mozilla/5.0 (Test Browser)',
      country: 'US',
      referring_url: 'https://google.com'
    });

    console.log(`Recorded Conversion: ${conversion.id}`);
    console.log(`Transaction ID: ${conversion.transaction_id}`);
    console.log(`Payout: $${conversion.payout}`);
    console.log(`Sale Amount: $${conversion.sale_amount}`);
    console.log(`Status: ${conversion.status}\n`);

    // 7. Get casino statistics
    const stats = await HasOffersTrackingService.getCasinoStats(casino.id);
    console.log('Casino Statistics:', JSON.stringify(stats, null, 2));
    console.log();

    // 8. Test conversion update (duplicate postback)
    const updatedConversion = await HasOffersTrackingService.recordConversion({
      transaction_id: conversion.transaction_id,
      offer_id: '123',
      status: 'rejected',
      payout: 0
    });

    console.log(`Updated Conversion Status: ${updatedConversion.status}`);
    console.log(`Updated Payout: $${updatedConversion.payout}\n`);

    // Cleanup
    await prisma.hasOffersConversion.delete({
      where: { id: conversion.id }
    });
    await prisma.hasOffersClick.delete({
      where: { id: click.id }
    });
    await prisma.hasOffersPostbackConfig.delete({
      where: { id: config.id }
    });

    console.log('Test completed successfully! All data cleaned up.');

  } catch (error) {
    console.error('Test failed:', error);
  } finally {
    await prisma.$disconnect();
  }
}

// Run the test
testHasOffersTracking();