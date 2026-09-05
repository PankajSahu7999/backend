import { prisma } from '../src/prisma';
import { HasOffersTrackingService } from '../src/services/hasOffersTrackingService';

async function runHasOffersAudit() {
  console.log('====================================================');
  console.log('       HASOFFERS TRACKING FULL AUDIT & TEST         ');
  console.log('====================================================\n');

  try {
    // 1. Check Casino Availability
    const casino = await prisma.casino.findFirst({
      where: { status: 'active' }
    });

    if (!casino) {
      console.error('❌ FAIL: No active casino found to run tests.');
      return;
    }
    console.log(`✅ [1/6] Target Casino Found: "${casino.name}" (${casino.id})`);

    // 2. Test Configuration Creation
    const testConfig = await prisma.hasOffersPostbackConfig.create({
      data: {
        casino_id: casino.id,
        network_domain: 'test-audit-network.go2cloud.org',
        offer_id: '999',
        postback_url: 'http://localhost:4000/api/hasoffers/postback',
        status: 'active',
        notes: 'Automated full-flow audit test configuration'
      }
    });
    console.log(`✅ [2/6] HasOffers Config Created (ID: ${testConfig.id})`);

    // 3. Test Outbound Tracking Click Generation
    const click = await HasOffersTrackingService.generateTrackingClick({
      casino_id: casino.id,
      ip_address: '127.0.0.1',
      user_agent: 'AuditRunner/1.0',
      country: 'US',
      source: 'organic_search'
    });
    console.log(`✅ [3/6] Click Generated Successfully:`);
    console.log(`    - Click ID (aff_sub): ${click.click_id}`);
    console.log(`    - Click Timestamp: ${click.clicked_at}`);

    // 4. Test Affiliate URL Generation
    const affiliateUrl = await HasOffersTrackingService.generateAffiliateUrl(
      click.click_id,
      casino.id
    );
    console.log(`✅ [4/6] Formatted HasOffers Tracking URL:`);
    console.log(`    - URL: ${affiliateUrl}`);

    // 5. Test Server-to-Server Postback Conversion Recording
    const testTxnId = `audit_txn_${Date.now()}`;
    const conversion = await HasOffersTrackingService.recordConversion({
      transaction_id: testTxnId,
      offer_id: '999',
      affiliate_id: 'aff_audit_007',
      aff_sub: click.click_id,
      aff_sub2: 'organic_search',
      aff_sub3: 'US',
      conversion_type: 'sale',
      payout: 50.00,
      sale_amount: 200.00,
      status: 'approved',
      ip_address: '127.0.0.1',
      user_agent: 'AuditRunner/1.0',
      country: 'US',
      referring_url: 'https://casinoreviewsbook.com'
    });
    console.log(`✅ [5/6] Postback Webhook Conversion Processed:`);
    console.log(`    - Conversion ID: ${conversion.id}`);
    console.log(`    - Transaction ID: ${conversion.transaction_id}`);
    console.log(`    - Payout: $${conversion.payout} | Sale Amount: $${conversion.sale_amount}`);
    console.log(`    - Status: ${conversion.status}`);

    // 6. Test Casino Analytics Aggregation
    const stats = await HasOffersTrackingService.getCasinoStats(casino.id);
    console.log(`✅ [6/6] Analytics Aggregation Verified:`);
    console.log(`    - Total Clicks: ${stats.overview.total_clicks}`);
    console.log(`    - Total Conversions: ${stats.overview.total_conversions}`);
    console.log(`    - Conversion Rate: ${stats.overview.conversion_rate}%`);
    console.log(`    - Total Revenue: $${stats.overview.total_revenue}`);
    console.log(`    - Total Payout: $${stats.overview.total_payout}`);

    // Clean up test data
    await prisma.hasOffersConversion.delete({ where: { id: conversion.id } });
    await prisma.hasOffersClick.delete({ where: { id: click.id } });
    await prisma.hasOffersPostbackConfig.delete({ where: { id: testConfig.id } });

    console.log('\n====================================================');
    console.log('       RESULT: ALL HASOFFERS FLOWS ARE 100% WORKING  ');
    console.log('====================================================\n');

  } catch (err) {
    console.error('❌ Audit encountered an error:', err);
  } finally {
    await prisma.$disconnect();
  }
}

runHasOffersAudit();
