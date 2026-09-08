# HasOffers Postback Tracking Implementation Guide

This guide explains how to use the HasOffers (TUNE) postback tracking system implemented in your Casino Reviews Book project.

## Overview

The HasOffers postback tracking system allows you to:
- Track affiliate conversions from multiple casino networks simultaneously
- Generate unique click IDs for tracking user journeys
- Receive server-to-server postback notifications from HasOffers networks
- Analyze conversion data and payout information
- Manage multiple network configurations per casino

## Database Schema

### New Models Added

#### HasOffersPostbackConfig
Stores configuration for each HasOffers network integration:
- `network_domain`: The HasOffers network domain (e.g., "your-network.go2cloud.org")
- `offer_id`: The specific offer ID from the network
- `postback_url`: Your endpoint to receive conversion notifications
- `status`: Configuration status (active/inactive/paused)

#### HasOffersConversion
Records conversion data from postbacks:
- `transaction_id`: Unique transaction ID from HasOffers
- `aff_sub` through `aff_sub5`: Tracking parameters
- `conversion_type`: Type of conversion (lead, sale, install, signup, deposit)
- `payout`: Affiliate payout amount
- `sale_amount`: Revenue amount
- `status`: Conversion status (pending, approved, rejected)

#### HasOffersClick
Tracks user clicks with unique IDs:
- `click_id`: Generated unique click identifier
- `transaction_id`: Linked HasOffers transaction ID
- User information (IP, user agent, country)
- Source tracking

## API Endpoints

### Postback Handling

#### POST/GET `/api/hasoffers/postback`
Public endpoint to receive postback notifications from HasOffers networks.

**Query Parameters:**
- `transaction_id` (required): Unique transaction ID from HasOffers
- `offer_id` (required): Offer identifier
- `affiliate_id`: Affiliate identifier
- `aff_sub` through `aff_sub5`: Tracking parameters
- `payout`: Affiliate payout amount
- `sale_amount`: Revenue amount
- `status`: Conversion status
- `conversion_type`: Type of conversion
- `ip`: User IP address
- `user_agent`: Browser user agent
- `country`: User country
- `referring_url`: Original referrer

**Example Postback URL:**
```
http://your-domain.com/api/hasoffers/postback?transaction_id=txn123&offer_id=456&aff_sub=clk_abc123&payout=25.00&sale_amount=100.00&status=approved&conversion_type=sale
```

### Click Tracking

#### POST `/api/hasoffers/click`
Generate a tracking click for a user visiting a casino.

**Request Body:**
```json
{
  "casino_id": "uuid",
  "user_id": "uuid (optional)",
  "ip_address": "192.168.1.1",
  "user_agent": "Mozilla/5.0...",
  "country": "US",
  "source": "google"
}
```

**Response:**
```json
{
  "click": {
    "id": "click-uuid",
    "click_id": "clk_1234567890_abc123",
    "casino_id": "casino-uuid",
    "clicked_at": "2026-08-07T06:27:50.883Z"
  },
  "tracking_url": "https://network.go2cloud.org/aff_c?offer_id=123&aff_sub=clk_1234567890_abc123",
  "click_id": "clk_1234567890_abc123"
}
```

### Configuration Management

#### GET `/api/admin/hasoffers/configs`
Get all HasOffers configurations.

#### POST `/api/admin/hasoffers/configs`
Create a new HasOffers configuration.

**Request Body:**
```json
{
  "casino_id": "uuid",
  "network_domain": "your-network.go2cloud.org",
  "offer_id": "123",
  "postback_url": "http://your-domain.com/api/hasoffers/postback",
  "status": "active",
  "notes": "Configuration notes"
}
```

#### PUT `/api/admin/hasoffers/configs/:id`
Update an existing configuration.

#### DELETE `/api/admin/hasoffers/configs/:id`
Delete a configuration.

#### GET `/api/admin/hasoffers/casino/:casinoId/configs`
Get configurations for a specific casino.

### Analytics

#### GET `/api/hasoffers/conversions/:casinoId`
Get conversions for a specific casino.

**Query Parameters:**
- `status`: Filter by conversion status
- `start_date`: Filter by start date
- `end_date`: Filter by end date
- `limit`: Number of results (default: 50)
- `offset`: Pagination offset

#### GET `/api/hasoffers/analytics/:casinoId`
Get conversion analytics for a casino.

**Query Parameters:**
- `start_date`: Start date for analytics
- `end_date`: End date for analytics

**Response:**
```json
{
  "overview": {
    "total_conversions": 100,
    "total_clicks": 1000,
    "conversion_rate": 10.0,
    "total_revenue": 5000,
    "total_payout": 1250
  },
  "by_status": [
    { "_count": 80, "status": "approved" },
    { "_count": 15, "status": "pending" },
    { "_count": 5, "status": "rejected" }
  ],
  "by_type": [
    { "_count": 60, "conversion_type": "sale" },
    { "_count": 30, "conversion_type": "lead" },
    { "_count": 10, "conversion_type": "signup" }
  ]
}
```

## Integration Steps

### 1. Set Up HasOffers Network Configuration

For each casino you want to track:

```bash
POST /api/admin/hasoffers/configs
{
  "casino_id": "your-casino-uuid",
  "network_domain": "network.go2cloud.org",
  "offer_id": "network-offer-id",
  "postback_url": "http://your-domain.com/api/hasoffers/postback",
  "status": "active"
}
```

### 2. Configure Postback URL in HasOffers Network

In your HasOffers network dashboard:
1. Navigate to the offer settings
2. Add your postback URL: `http://your-domain.com/api/hasoffers/postback`
3. Enable the macros you want to track:
   - `{transaction_id}` - Required
   - `{offer_id}` - Required
   - `{payout}` - Recommended
   - `{sale_amount}` - Recommended
   - `{aff_sub}` through `{aff_sub5}` - For tracking
   - `{status}` - For conversion status updates

### 3. Generate Tracking Clicks

When a user clicks on a casino affiliate link:

```javascript
// Frontend example
async function trackCasinoClick(casinoId) {
  const response = await fetch('/api/hasoffers/click', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      casino_id: casinoId,
      ip_address: 'user-ip',
      user_agent: navigator.userAgent,
      country: 'user-country',
      source: 'traffic-source'
    })
  });
  
  const data = await response.json();
  // Redirect user to data.tracking_url
  window.location.href = data.tracking_url;
}
```

### 4. Handle Automatic Postbacks

The system automatically handles incoming postbacks from HasOffers networks. No additional implementation needed - just ensure your postback URL is accessible publicly.

## Tracking Service Usage

You can also use the tracking service directly in your backend code:

```typescript
import { HasOffersTrackingService } from '../services/hasOffersTrackingService';

// Generate a tracking click
const click = await HasOffersTrackingService.generateTrackingClick({
  casino_id: 'casino-uuid',
  ip_address: '192.168.1.1',
  user_agent: 'Mozilla/5.0...',
  country: 'US',
  source: 'google'
});

// Generate affiliate URL
const affiliateUrl = await HasOffersTrackingService.generateAffiliateUrl(
  click.click_id,
  'casino-uuid'
);

// Get tracking parameters
const params = await HasOffersTrackingService.getTrackingParameters(click.click_id);

// Record conversion manually (if needed)
const conversion = await HasOffersTrackingService.recordConversion({
  transaction_id: 'txn_123',
  offer_id: '456',
  aff_sub: click.click_id,
  conversion_type: 'sale',
  payout: 25.00,
  sale_amount: 100.00,
  status: 'approved'
});

// Get casino statistics
const stats = await HasOffersTrackingService.getCasinoStats('casino-uuid');
```

## Multiple Casino Tracking

The system is designed to track multiple casinos simultaneously:

1. **Separate Configurations**: Each casino can have multiple HasOffers network configurations
2. **Unified Postback Endpoint**: All casinos use the same postback endpoint (`/api/hasoffers/postback`)
3. **Automatic Routing**: The system automatically routes conversions to the correct casino based on `offer_id` and `aff_sub` parameters
4. **Per-Casino Analytics**: Get analytics for each casino individually

## Testing

A test script is included at `backend/tests/hasOffersTracking.test.ts`:

```bash
cd backend
npx ts-node tests/hasOffersTracking.test.ts
```

This test demonstrates:
- Creating a HasOffers configuration
- Generating tracking clicks
- Creating affiliate URLs
- Recording conversions
- Retrieving analytics
- Updating conversion status

## Security Considerations

1. **Postback URL Security**: The postback endpoint is public (required for HasOffers networks to reach it). Consider:
   - IP whitelisting if the network provides fixed IPs
   - Signature verification if supported by the network
   - Rate limiting to prevent abuse

2. **Data Validation**: The system validates all incoming postback data
3. **Transaction ID Uniqueness**: Prevents duplicate conversion recording

## Troubleshooting

### Conversions not appearing
- Check that the postback URL is correctly configured in the HasOffers network
- Verify the network domain and offer ID match your configuration
- Check server logs for postback errors

### Clicks not converting
- Ensure `aff_sub` parameter is being passed correctly
- Verify the click ID is being generated and stored
- Check that the tracking URL includes the `aff_sub` parameter

### Analytics showing incorrect data
- Verify the date range parameters
- Check that conversions are being recorded with correct status
- Ensure casino IDs match between clicks and configurations

## Environment Variables

Add to your `.env` file:

```env
API_BASE_URL=http://your-domain.com
```

This is used to generate default postback URLs.

## Future Enhancements

Potential improvements to consider:
- Real-time conversion notifications via websockets
- Advanced fraud detection
- Multi-currency support
- Custom conversion events
- Integration with additional tracking platforms
- Export functionality for analytics data