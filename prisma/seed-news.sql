-- ==============================================================
-- Top 50 Latest News Database Seeder for Server / Production
-- Generated: 2026-10-08T05:54:31.703Z
-- Idempotent: Upserts based on unique slug
-- Run on Server:
--   psql -U postgres -d casinolab -f prisma/seed-news.sql
-- ==============================================================

DO $$
DECLARE
  v_author_id UUID;
  inserted_count INTEGER := 0;
  updated_count INTEGER := 0;
BEGIN
  -- Pick an existing active user/admin as author if available
  SELECT id INTO v_author_id FROM "User" LIMIT 1;

  -- News #1: UK Gambling Commission Implements Mandatory Financial Risk Assessments for Online Casinos
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'ukgc-mandatory-financial-risk-assessments-online-casinos') THEN
    UPDATE "News" SET
      title = 'UK Gambling Commission Implements Mandatory Financial Risk Assessments for Online Casinos',
      featured_image = 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The UK Gambling Commission (UKGC) has officially confirmed the rollout of its mandatory financial risk assessment framework for all licensed British remote gambling operators.</p>
<h2>Frictionless Background Checks</h2>
<p>Under the updated policy, operators must conduct automated, background checks when a customer exceeds net loss thresholds of £500 within a rolling 30-day window. These checks are designed to identify red flags such as active bankruptcies, unpaid court judgments, or severe debt arrears without interrupting the player''s gaming experience.</p>
<h2>Industry Reaction</h2>
<p>Major operators including Flutter and Entain have welcomed the clarity, noting that automated assessments provide greater consumer safeguards while preventing intrusive manual document submissions.</p>
<p>The UKGC stated that the primary objective is targeted player advocacy without penalizing recreational players.</p>',
      meta_title = 'UKGC Introduces Mandatory Financial Risk Assessments | Casino News',
      meta_description = 'UK Gambling Commission launches automated financial risk assessments for remote casino players to strengthen consumer protection.',
      status = 'published',
      sort_order = 1,
      updated_at = NOW()
    WHERE slug = 'ukgc-mandatory-financial-risk-assessments-online-casinos';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'UK Gambling Commission Implements Mandatory Financial Risk Assessments for Online Casinos', 'ukgc-mandatory-financial-risk-assessments-online-casinos', 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=1200&auto=format&fit=crop&q=80', '<p>The UK Gambling Commission (UKGC) has officially confirmed the rollout of its mandatory financial risk assessment framework for all licensed British remote gambling operators.</p>
<h2>Frictionless Background Checks</h2>
<p>Under the updated policy, operators must conduct automated, background checks when a customer exceeds net loss thresholds of £500 within a rolling 30-day window. These checks are designed to identify red flags such as active bankruptcies, unpaid court judgments, or severe debt arrears without interrupting the player''s gaming experience.</p>
<h2>Industry Reaction</h2>
<p>Major operators including Flutter and Entain have welcomed the clarity, noting that automated assessments provide greater consumer safeguards while preventing intrusive manual document submissions.</p>
<p>The UKGC stated that the primary objective is targeted player advocacy without penalizing recreational players.</p>', 'UKGC Introduces Mandatory Financial Risk Assessments | Casino News', 'UK Gambling Commission launches automated financial risk assessments for remote casino players to strengthen consumer protection.', 'published', 1, '2026-10-07T08:30:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #2: Pragmatic Play Launches "Gates of Olympus Megaways" with 25,000x Max Win Potential
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'pragmatic-play-launches-gates-of-olympus-megaways') THEN
    UPDATE "News" SET
      title = 'Pragmatic Play Launches "Gates of Olympus Megaways" with 25,000x Max Win Potential',
      featured_image = 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Pragmatic Play has unveiled the latest evolution in its legendary Greek pantheon portfolio: <strong>Gates of Olympus Megaways</strong>.</p>
<h2>Dynamic Tumbling Action</h2>
<p>Utilizing Big Time Gaming’s iconic Megaways mechanic under license, the release provides up to 117,649 ways to win across six cascading reels. Random lightning multipliers unleashed by Zeus award multiplier orb boosts scaling up to 500x in both base play and the free spins bonus round.</p>
<h2>Global Operator Availability</h2>
<p>The slot features an audited 96.50% RTP with extreme volatility, catering to players seeking high-risk, high-reward gameplay. It is now live across international casino partner networks.</p>',
      meta_title = 'Gates of Olympus Megaways Released by Pragmatic Play | Slot News',
      meta_description = 'Pragmatic Play introduces Gates of Olympus Megaways with 117,649 ways to win, 500x multipliers, and up to 25,000x jackpot potential.',
      status = 'published',
      sort_order = 2,
      updated_at = NOW()
    WHERE slug = 'pragmatic-play-launches-gates-of-olympus-megaways';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Pragmatic Play Launches "Gates of Olympus Megaways" with 25,000x Max Win Potential', 'pragmatic-play-launches-gates-of-olympus-megaways', 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80', '<p>Pragmatic Play has unveiled the latest evolution in its legendary Greek pantheon portfolio: <strong>Gates of Olympus Megaways</strong>.</p>
<h2>Dynamic Tumbling Action</h2>
<p>Utilizing Big Time Gaming’s iconic Megaways mechanic under license, the release provides up to 117,649 ways to win across six cascading reels. Random lightning multipliers unleashed by Zeus award multiplier orb boosts scaling up to 500x in both base play and the free spins bonus round.</p>
<h2>Global Operator Availability</h2>
<p>The slot features an audited 96.50% RTP with extreme volatility, catering to players seeking high-risk, high-reward gameplay. It is now live across international casino partner networks.</p>', 'Gates of Olympus Megaways Released by Pragmatic Play | Slot News', 'Pragmatic Play introduces Gates of Olympus Megaways with 117,649 ways to win, 500x multipliers, and up to 25,000x jackpot potential.', 'published', 2, '2026-10-06T14:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #3: Bitcoin Lightning Network Integration Surges Across Crypto Casinos, Slashing Payout Times to Seconds
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'bitcoin-lightning-network-surges-across-crypto-casinos') THEN
    UPDATE "News" SET
      title = 'Bitcoin Lightning Network Integration Surges Across Crypto Casinos, Slashing Payout Times to Seconds',
      featured_image = 'https://images.unsplash.com/photo-1621416894569-0f39ed31d247?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Adoption of the Bitcoin Lightning Network has grown by over 140% year-on-year across tier-1 crypto casinos, according to the latest iGaming payments report.</p>
<h2>Sub-Second Settled Withdrawals</h2>
<p>By routing transactions off-chain, the Lightning Network eliminates the traditional 10-to-60 minute Bitcoin mempool confirmation lag, allowing instant deposits and automated micro-withdrawals with network transaction fees under $0.01.</p>
<h2>Enhanced Player Sovereignty</h2>
<p>Analysts highlight that layer-2 scalability addresses previous friction points where high on-chain fees discouraged small-stakes Bitcoin bettors from enjoying seamless casino play.</p>',
      meta_title = 'Bitcoin Lightning Network Revolutionizes Crypto Casino Withdrawals',
      meta_description = 'Crypto casinos adopt Bitcoin Lightning Network for sub-second, zero-fee withdrawals and deposits.',
      status = 'published',
      sort_order = 3,
      updated_at = NOW()
    WHERE slug = 'bitcoin-lightning-network-surges-across-crypto-casinos';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Bitcoin Lightning Network Integration Surges Across Crypto Casinos, Slashing Payout Times to Seconds', 'bitcoin-lightning-network-surges-across-crypto-casinos', 'https://images.unsplash.com/photo-1621416894569-0f39ed31d247?w=1200&auto=format&fit=crop&q=80', '<p>Adoption of the Bitcoin Lightning Network has grown by over 140% year-on-year across tier-1 crypto casinos, according to the latest iGaming payments report.</p>
<h2>Sub-Second Settled Withdrawals</h2>
<p>By routing transactions off-chain, the Lightning Network eliminates the traditional 10-to-60 minute Bitcoin mempool confirmation lag, allowing instant deposits and automated micro-withdrawals with network transaction fees under $0.01.</p>
<h2>Enhanced Player Sovereignty</h2>
<p>Analysts highlight that layer-2 scalability addresses previous friction points where high on-chain fees discouraged small-stakes Bitcoin bettors from enjoying seamless casino play.</p>', 'Bitcoin Lightning Network Revolutionizes Crypto Casino Withdrawals', 'Crypto casinos adopt Bitcoin Lightning Network for sub-second, zero-fee withdrawals and deposits.', 'published', 3, '2026-10-05T11:45:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #4: Evolution Unveils State-of-the-Art European Live Casino Studio with 50+ Custom Tables
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'evolution-unveils-new-european-live-casino-studio') THEN
    UPDATE "News" SET
      title = 'Evolution Unveils State-of-the-Art European Live Casino Studio with 50+ Custom Tables',
      featured_image = 'https://images.unsplash.com/photo-1511193311914-0346f16efe90?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Live gaming powerhouse Evolution has officially inaugurated its largest purpose-built broadcasting hub in Southern Europe, featuring more than 50 dedicated tables.</p>
<h2>Next-Gen Studio Infrastructure</h2>
<p>The studio incorporates multi-camera 4K optical tracking, ultra-low latency WebRTC streaming, and sound-engineered acoustic isolation. Players can choose from native-language dealers across Spanish, Italian, German, and English tables.</p>
<h2>Exclusive Operator Branding</h2>
<p>Multiple international operators have already contracted dedicated VIP salons within the facility, providing tailored club experiences for high-stakes card and roulette players.</p>',
      meta_title = 'Evolution Expands European Presence with New 4K Live Studio',
      meta_description = 'Evolution opens massive European live casino broadcasting facility with 50+ custom tables and multi-language dealer coverage.',
      status = 'published',
      sort_order = 4,
      updated_at = NOW()
    WHERE slug = 'evolution-unveils-new-european-live-casino-studio';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Evolution Unveils State-of-the-Art European Live Casino Studio with 50+ Custom Tables', 'evolution-unveils-new-european-live-casino-studio', 'https://images.unsplash.com/photo-1511193311914-0346f16efe90?w=1200&auto=format&fit=crop&q=80', '<p>Live gaming powerhouse Evolution has officially inaugurated its largest purpose-built broadcasting hub in Southern Europe, featuring more than 50 dedicated tables.</p>
<h2>Next-Gen Studio Infrastructure</h2>
<p>The studio incorporates multi-camera 4K optical tracking, ultra-low latency WebRTC streaming, and sound-engineered acoustic isolation. Players can choose from native-language dealers across Spanish, Italian, German, and English tables.</p>
<h2>Exclusive Operator Branding</h2>
<p>Multiple international operators have already contracted dedicated VIP salons within the facility, providing tailored club experiences for high-stakes card and roulette players.</p>', 'Evolution Expands European Presence with New 4K Live Studio', 'Evolution opens massive European live casino broadcasting facility with 50+ custom tables and multi-language dealer coverage.', 'published', 4, '2026-10-04T16:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #5: Malta Gaming Authority Enforces Stricter ESG and Responsible Gambling Standards for 2026
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'mga-enforces-stricter-esg-and-responsible-gambling-standards') THEN
    UPDATE "News" SET
      title = 'Malta Gaming Authority Enforces Stricter ESG and Responsible Gambling Standards for 2026',
      featured_image = 'https://images.unsplash.com/photo-1450133064473-71024230f91b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The Malta Gaming Authority (MGA) has updated its regulatory compliance rulebook, requiring operators holding B2C gaming services licenses to adhere to expanded ESG metrics.</p>
<h2>Mandatory Behavioral Monitoring</h2>
<p>Licensees must integrate real-time algorithmic tracking to detect erratic bet escalation, chasing losses, and night-time session duration spikes, intervening proactively with mandatory cooling-off prompts.</p>
<h2>Global Regulatory Alignment</h2>
<p>MGA executives noted that the framework aligns Maltese operators with evolving European Union directives, maintaining the jurisdiction’s gold-standard reputation in iGaming governance.</p>',
      meta_title = 'MGA Updates Responsible Gaming & ESG Compliance Rules 2026',
      meta_description = 'Malta Gaming Authority introduces real-time behavioral monitoring and ESG reporting requirements for all licensed casinos.',
      status = 'published',
      sort_order = 5,
      updated_at = NOW()
    WHERE slug = 'mga-enforces-stricter-esg-and-responsible-gambling-standards';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Malta Gaming Authority Enforces Stricter ESG and Responsible Gambling Standards for 2026', 'mga-enforces-stricter-esg-and-responsible-gambling-standards', 'https://images.unsplash.com/photo-1450133064473-71024230f91b?w=1200&auto=format&fit=crop&q=80', '<p>The Malta Gaming Authority (MGA) has updated its regulatory compliance rulebook, requiring operators holding B2C gaming services licenses to adhere to expanded ESG metrics.</p>
<h2>Mandatory Behavioral Monitoring</h2>
<p>Licensees must integrate real-time algorithmic tracking to detect erratic bet escalation, chasing losses, and night-time session duration spikes, intervening proactively with mandatory cooling-off prompts.</p>
<h2>Global Regulatory Alignment</h2>
<p>MGA executives noted that the framework aligns Maltese operators with evolving European Union directives, maintaining the jurisdiction’s gold-standard reputation in iGaming governance.</p>', 'MGA Updates Responsible Gaming & ESG Compliance Rules 2026', 'Malta Gaming Authority introduces real-time behavioral monitoring and ESG reporting requirements for all licensed casinos.', 'published', 5, '2026-10-03T09:10:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #6: Lucky European Player Hits Record €13.8M Mega Moolah Progressive Jackpot on €0.75 Spin
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'lucky-player-hits-record-mega-moolah-jackpot-13m') THEN
    UPDATE "News" SET
      title = 'Lucky European Player Hits Record €13.8M Mega Moolah Progressive Jackpot on €0.75 Spin',
      featured_image = 'https://images.unsplash.com/photo-1606167668584-78701c57f13d?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The world’s most renowned progressive slot network, Mega Moolah, has delivered another life-altering windfall, paying out an astonishing €13,842,910 to an online player.</p>
<h2>Historic Spin from Mobile</h2>
<p>The winner was spinning the reels on a mobile casino site with a modest €0.75 stake when the four-tier progressive bonus wheel was triggered, landing squarely on the coveted Mega Jackpot slice.</p>
<h2>Lump-Sum Payout Guaranteed</h2>
<p>As per Games Global’s progressive jackpot charter, all jackpot wins are audited and paid out in a single lump-sum transfer with zero annuity deductions.</p>',
      meta_title = 'Player Wins €13.8 Million on Mega Moolah Progressive Jackpot',
      meta_description = 'Mega Moolah progressive jackpot drops €13.8M on a €0.75 spin, paid out in a full lump sum.',
      status = 'published',
      sort_order = 6,
      updated_at = NOW()
    WHERE slug = 'lucky-player-hits-record-mega-moolah-jackpot-13m';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Lucky European Player Hits Record €13.8M Mega Moolah Progressive Jackpot on €0.75 Spin', 'lucky-player-hits-record-mega-moolah-jackpot-13m', 'https://images.unsplash.com/photo-1606167668584-78701c57f13d?w=1200&auto=format&fit=crop&q=80', '<p>The world’s most renowned progressive slot network, Mega Moolah, has delivered another life-altering windfall, paying out an astonishing €13,842,910 to an online player.</p>
<h2>Historic Spin from Mobile</h2>
<p>The winner was spinning the reels on a mobile casino site with a modest €0.75 stake when the four-tier progressive bonus wheel was triggered, landing squarely on the coveted Mega Jackpot slice.</p>
<h2>Lump-Sum Payout Guaranteed</h2>
<p>As per Games Global’s progressive jackpot charter, all jackpot wins are audited and paid out in a single lump-sum transfer with zero annuity deductions.</p>', 'Player Wins €13.8 Million on Mega Moolah Progressive Jackpot', 'Mega Moolah progressive jackpot drops €13.8M on a €0.75 spin, paid out in a full lump sum.', 'published', 6, '2026-10-02T18:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #7: Brazil Launches Federally Regulated Online Betting and iGaming Market with 80+ Licensed Brands
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'brazil-launches-federally-regulated-online-betting-market') THEN
    UPDATE "News" SET
      title = 'Brazil Launches Federally Regulated Online Betting and iGaming Market with 80+ Licensed Brands',
      featured_image = 'https://images.unsplash.com/photo-1508098682722-e99c43a406b2?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The Brazilian Ministry of Finance has officially opened the doors to its regulated federal sports betting and online casino market, issuing operating licenses to more than 80 qualified operators.</p>
<h2>Exclusive PIX Payment Rails</h2>
<p>Under federal regulations, operators must process all deposits and withdrawals via Brazil’s instant central bank rail (PIX), banning credit cards and untraceable cash vouchers to prevent problem debt.</p>
<h2>Economic Impact</h2>
<p>Industry analysts project Brazil will become one of the top-five largest regulated iGaming markets globally by gross gaming revenue within the next 24 months.</p>',
      meta_title = 'Brazil Opens Legal Online Gambling & Sports Betting Market',
      meta_description = 'Brazil launches legal federal iGaming and sports betting market with PIX payment integration and strict player safeguards.',
      status = 'published',
      sort_order = 7,
      updated_at = NOW()
    WHERE slug = 'brazil-launches-federally-regulated-online-betting-market';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Brazil Launches Federally Regulated Online Betting and iGaming Market with 80+ Licensed Brands', 'brazil-launches-federally-regulated-online-betting-market', 'https://images.unsplash.com/photo-1508098682722-e99c43a406b2?w=1200&auto=format&fit=crop&q=80', '<p>The Brazilian Ministry of Finance has officially opened the doors to its regulated federal sports betting and online casino market, issuing operating licenses to more than 80 qualified operators.</p>
<h2>Exclusive PIX Payment Rails</h2>
<p>Under federal regulations, operators must process all deposits and withdrawals via Brazil’s instant central bank rail (PIX), banning credit cards and untraceable cash vouchers to prevent problem debt.</p>
<h2>Economic Impact</h2>
<p>Industry analysts project Brazil will become one of the top-five largest regulated iGaming markets globally by gross gaming revenue within the next 24 months.</p>', 'Brazil Opens Legal Online Gambling & Sports Betting Market', 'Brazil launches legal federal iGaming and sports betting market with PIX payment integration and strict player safeguards.', 'published', 7, '2026-10-01T13:25:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #8: Open Banking Adoption in Online Gambling Reaches 65% Across Europe, Replacing Traditional Debit Cards
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'open-banking-adoption-online-gambling-reaches-65-percent') THEN
    UPDATE "News" SET
      title = 'Open Banking Adoption in Online Gambling Reaches 65% Across Europe, Replacing Traditional Debit Cards',
      featured_image = 'https://images.unsplash.com/photo-1556742049-0a67c5574f73?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Open Banking payments have overtaken credit and debit cards as the most popular deposit and withdrawal method across European online casinos, according to European FinTech research.</p>
<h2>Frictionless KYC and Instant Payouts</h2>
<p>By leveraging authorized bank APIs, Open Banking enables biometric deposit authentication via FaceID/fingerprint while automatically confirming bank account ownership, eliminating manual bank statement verification.</p>
<h2>Zero Chargeback Risk</h2>
<p>Casinos benefit from instant settlement and complete elimination of card interchange fees, passing savings back to players through zero-fee withdrawals.</p>',
      meta_title = 'Open Banking Dominates European Casino Payment Ecosystem',
      meta_description = 'Over 65% of European online casino transactions now flow through Open Banking account-to-account rails.',
      status = 'published',
      sort_order = 8,
      updated_at = NOW()
    WHERE slug = 'open-banking-adoption-online-gambling-reaches-65-percent';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Open Banking Adoption in Online Gambling Reaches 65% Across Europe, Replacing Traditional Debit Cards', 'open-banking-adoption-online-gambling-reaches-65-percent', 'https://images.unsplash.com/photo-1556742049-0a67c5574f73?w=1200&auto=format&fit=crop&q=80', '<p>Open Banking payments have overtaken credit and debit cards as the most popular deposit and withdrawal method across European online casinos, according to European FinTech research.</p>
<h2>Frictionless KYC and Instant Payouts</h2>
<p>By leveraging authorized bank APIs, Open Banking enables biometric deposit authentication via FaceID/fingerprint while automatically confirming bank account ownership, eliminating manual bank statement verification.</p>
<h2>Zero Chargeback Risk</h2>
<p>Casinos benefit from instant settlement and complete elimination of card interchange fees, passing savings back to players through zero-fee withdrawals.</p>', 'Open Banking Dominates European Casino Payment Ecosystem', 'Over 65% of European online casino transactions now flow through Open Banking account-to-account rails.', 'published', 8, '2026-09-30T10:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #9: Leading iGaming Operators Deploy AI-Powered Predictive Models to Detect Gambling Fatigue Early
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'ai-powered-predictive-models-detect-gambling-fatigue') THEN
    UPDATE "News" SET
      title = 'Leading iGaming Operators Deploy AI-Powered Predictive Models to Detect Gambling Fatigue Early',
      featured_image = 'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A consortium of European and UK licensed casino operators has deployed next-generation artificial intelligence models trained to identify gambling fatigue and compulsive tendencies.</p>
<h2>Micro-Behavioral Analysis</h2>
<p>Rather than relying solely on aggregate deposit sizes, the AI analyzes subtle behavioral markers, including spin cadence acceleration, cancelled withdrawal requests, and repeated deposit attempts following card declines.</p>
<h2>Automated Interventions</h2>
<p>When high-risk scores are flagged, platforms automatically restrict promotions, offer mandatory session timeouts, or connect players directly with responsible gambling advisors.</p>',
      meta_title = 'AI Predictive Tech Deployed to Prevent Problem Gambling in Real-Time',
      meta_description = 'Tier-1 casinos deploy machine learning algorithms to detect risky gambling patterns and protect players proactively.',
      status = 'published',
      sort_order = 9,
      updated_at = NOW()
    WHERE slug = 'ai-powered-predictive-models-detect-gambling-fatigue';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Leading iGaming Operators Deploy AI-Powered Predictive Models to Detect Gambling Fatigue Early', 'ai-powered-predictive-models-detect-gambling-fatigue', 'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=1200&auto=format&fit=crop&q=80', '<p>A consortium of European and UK licensed casino operators has deployed next-generation artificial intelligence models trained to identify gambling fatigue and compulsive tendencies.</p>
<h2>Micro-Behavioral Analysis</h2>
<p>Rather than relying solely on aggregate deposit sizes, the AI analyzes subtle behavioral markers, including spin cadence acceleration, cancelled withdrawal requests, and repeated deposit attempts following card declines.</p>
<h2>Automated Interventions</h2>
<p>When high-risk scores are flagged, platforms automatically restrict promotions, offer mandatory session timeouts, or connect players directly with responsible gambling advisors.</p>', 'AI Predictive Tech Deployed to Prevent Problem Gambling in Real-Time', 'Tier-1 casinos deploy machine learning algorithms to detect risky gambling patterns and protect players proactively.', 'published', 9, '2026-09-29T15:40:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #10: Nolimit City Releases "Tombstone Bloodbath" Featuring Record 100,000x Max Payout Multiplier
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'nolimit-city-releases-tombstone-bloodbath-100000x') THEN
    UPDATE "News" SET
      title = 'Nolimit City Releases "Tombstone Bloodbath" Featuring Record 100,000x Max Payout Multiplier',
      featured_image = 'https://images.unsplash.com/photo-1596838132731-3301c3fd4317?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Nolimit City has unleashed its most ferocious western sequel yet: <strong>Tombstone Bloodbath</strong>.</p>
<h2>Unprecedented Win Potential</h2>
<p>Boasting a certified maximum payout cap of 100,000x the initial stake, the game introduces upgraded xSplit wilds, locking sticky multipliers, and an adrenaline-fueled bounty round.</p>
<h2>High-Stakes Enthusiasts</h2>
<p>Operating with Nolimit City’s trademark "Insane" volatility classification, early player feedback indicates strong engagement among slot connoisseurs who favor high-variance mechanics.</p>',
      meta_title = 'Nolimit City Launches Tombstone Bloodbath with 100,000x Cap',
      meta_description = 'Nolimit City introduces Tombstone Bloodbath slot featuring record 100,000x win potential and signature xMechanics.',
      status = 'published',
      sort_order = 10,
      updated_at = NOW()
    WHERE slug = 'nolimit-city-releases-tombstone-bloodbath-100000x';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Nolimit City Releases "Tombstone Bloodbath" Featuring Record 100,000x Max Payout Multiplier', 'nolimit-city-releases-tombstone-bloodbath-100000x', 'https://images.unsplash.com/photo-1596838132731-3301c3fd4317?w=1200&auto=format&fit=crop&q=80', '<p>Nolimit City has unleashed its most ferocious western sequel yet: <strong>Tombstone Bloodbath</strong>.</p>
<h2>Unprecedented Win Potential</h2>
<p>Boasting a certified maximum payout cap of 100,000x the initial stake, the game introduces upgraded xSplit wilds, locking sticky multipliers, and an adrenaline-fueled bounty round.</p>
<h2>High-Stakes Enthusiasts</h2>
<p>Operating with Nolimit City’s trademark "Insane" volatility classification, early player feedback indicates strong engagement among slot connoisseurs who favor high-variance mechanics.</p>', 'Nolimit City Launches Tombstone Bloodbath with 100,000x Cap', 'Nolimit City introduces Tombstone Bloodbath slot featuring record 100,000x win potential and signature xMechanics.', 'published', 10, '2026-09-28T12:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #11: Missouri Voters Approve Legal Sports Betting and Online Casinos in Landmark Ballot Initiative
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'missouri-approves-legal-sports-betting-online-casinos') THEN
    UPDATE "News" SET
      title = 'Missouri Voters Approve Legal Sports Betting and Online Casinos in Landmark Ballot Initiative',
      featured_image = 'https://images.unsplash.com/photo-1546519638-68e109498ffc?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Missouri voters have decisively approved Amendment 2, legalizing commercial sports betting across the state and clearing the path for regulated mobile sportsbooks.</p>
<h2>Projected Tax Revenue</h2>
<p>State fiscal analysts estimate legal wagering will generate upwards of $30 million annually in state education funding, with major US sports franchises backing the initiative.</p>
<h2>Launch Timeline</h2>
<p>The Missouri Gaming Commission has targeted an official market launch ahead of the 2026 NFL football season, welcoming applications from licensed sportsbook and gaming operators.</p>',
      meta_title = 'Missouri Legalizes Sports Betting & Online Wagering | US News',
      meta_description = 'Missouri voters pass ballot initiative legalizing mobile sports betting and commercial gaming partnerships.',
      status = 'published',
      sort_order = 11,
      updated_at = NOW()
    WHERE slug = 'missouri-approves-legal-sports-betting-online-casinos';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Missouri Voters Approve Legal Sports Betting and Online Casinos in Landmark Ballot Initiative', 'missouri-approves-legal-sports-betting-online-casinos', 'https://images.unsplash.com/photo-1546519638-68e109498ffc?w=1200&auto=format&fit=crop&q=80', '<p>Missouri voters have decisively approved Amendment 2, legalizing commercial sports betting across the state and clearing the path for regulated mobile sportsbooks.</p>
<h2>Projected Tax Revenue</h2>
<p>State fiscal analysts estimate legal wagering will generate upwards of $30 million annually in state education funding, with major US sports franchises backing the initiative.</p>
<h2>Launch Timeline</h2>
<p>The Missouri Gaming Commission has targeted an official market launch ahead of the 2026 NFL football season, welcoming applications from licensed sportsbook and gaming operators.</p>', 'Missouri Legalizes Sports Betting & Online Wagering | US News', 'Missouri voters pass ballot initiative legalizing mobile sports betting and commercial gaming partnerships.', 'published', 11, '2026-09-27T08:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #12: Tether (USDT) Accounts for Over 68% of Total Crypto Casino Deposit Volume in 2026
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'tether-usdt-accounts-for-68-percent-crypto-casino-volume') THEN
    UPDATE "News" SET
      title = 'Tether (USDT) Accounts for Over 68% of Total Crypto Casino Deposit Volume in 2026',
      featured_image = 'https://images.unsplash.com/photo-1639762681485-074b7f938ba0?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Tether’s USDT stablecoin has captured an overwhelming 68% share of all cryptocurrency transactions at online casinos worldwide, according to quarterly blockchain analytics.</p>
<h2>Stable Bankroll Management</h2>
<p>Players increasingly favor stablecoins to avoid asset price volatility between their deposits and withdrawals, ensuring their casino bankrolls remain predictable and immune to crypto market swings.</p>
<h2>Tron and Polygon Networks Favored</h2>
<p>Due to sub-dollar transaction fees and fast confirmation speeds, USDT transfers on Tron (TRC-20) and Polygon (ERC-20) represent the majority of transaction volume.</p>',
      meta_title = 'USDT Dominates Crypto Casino Payments with 68% Market Share',
      meta_description = 'Tether USDT cements leadership in crypto gambling transactions as players prioritize stability and low network fees.',
      status = 'published',
      sort_order = 12,
      updated_at = NOW()
    WHERE slug = 'tether-usdt-accounts-for-68-percent-crypto-casino-volume';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Tether (USDT) Accounts for Over 68% of Total Crypto Casino Deposit Volume in 2026', 'tether-usdt-accounts-for-68-percent-crypto-casino-volume', 'https://images.unsplash.com/photo-1639762681485-074b7f938ba0?w=1200&auto=format&fit=crop&q=80', '<p>Tether’s USDT stablecoin has captured an overwhelming 68% share of all cryptocurrency transactions at online casinos worldwide, according to quarterly blockchain analytics.</p>
<h2>Stable Bankroll Management</h2>
<p>Players increasingly favor stablecoins to avoid asset price volatility between their deposits and withdrawals, ensuring their casino bankrolls remain predictable and immune to crypto market swings.</p>
<h2>Tron and Polygon Networks Favored</h2>
<p>Due to sub-dollar transaction fees and fast confirmation speeds, USDT transfers on Tron (TRC-20) and Polygon (ERC-20) represent the majority of transaction volume.</p>', 'USDT Dominates Crypto Casino Payments with 68% Market Share', 'Tether USDT cements leadership in crypto gambling transactions as players prioritize stability and low network fees.', 'published', 12, '2026-09-26T14:30:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #13: Curacao National Ordinance on Games of Chance (LOK) Reaches Full Implementation Stage
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'curacao-lok-ordinance-full-implementation-stage') THEN
    UPDATE "News" SET
      title = 'Curacao National Ordinance on Games of Chance (LOK) Reaches Full Implementation Stage',
      featured_image = 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Curacao’s landmark National Ordinance on Games of Chance (LOK) has reached its final transition stage, fundamentally overhauling the island’s iGaming licensing ecosystem.</p>
<h2>Direct Government Oversight</h2>
<p>The era of third-party master licenses has concluded, replaced by direct regulatory oversight from the newly constituted Curaçao Gaming Authority (CGA). Operators must adhere to rigorous anti-money laundering (AML) controls and audited player fund segregation.</p>
<h2>International Credibility</h2>
<p>The reform significantly bolsters Curacao-licensed casinos’ standing with international banking partners and tier-one software providers.</p>',
      meta_title = 'Curacao Completes New LOK iGaming Regulatory Overhaul',
      meta_description = 'Curaçao Gaming Authority implements LOK regulations, elevating licensing standards and player safety across international operators.',
      status = 'published',
      sort_order = 13,
      updated_at = NOW()
    WHERE slug = 'curacao-lok-ordinance-full-implementation-stage';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Curacao National Ordinance on Games of Chance (LOK) Reaches Full Implementation Stage', 'curacao-lok-ordinance-full-implementation-stage', 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80', '<p>Curacao’s landmark National Ordinance on Games of Chance (LOK) has reached its final transition stage, fundamentally overhauling the island’s iGaming licensing ecosystem.</p>
<h2>Direct Government Oversight</h2>
<p>The era of third-party master licenses has concluded, replaced by direct regulatory oversight from the newly constituted Curaçao Gaming Authority (CGA). Operators must adhere to rigorous anti-money laundering (AML) controls and audited player fund segregation.</p>
<h2>International Credibility</h2>
<p>The reform significantly bolsters Curacao-licensed casinos’ standing with international banking partners and tier-one software providers.</p>', 'Curacao Completes New LOK iGaming Regulatory Overhaul', 'Curaçao Gaming Authority implements LOK regulations, elevating licensing standards and player safety across international operators.', 'published', 13, '2026-09-25T11:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #14: Hacksaw Gaming Reaches 150-Game Milestone with Unique "Dare2Win" Mobile Titles
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'hacksaw-gaming-150-game-milestone-dare2win') THEN
    UPDATE "News" SET
      title = 'Hacksaw Gaming Reaches 150-Game Milestone with Unique "Dare2Win" Mobile Titles',
      featured_image = 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Hacksaw Gaming has reached a major production milestone, surpassing 150 certified mobile-first casino games distributed across regulated markets globally.</p>
<h2>Arcade Meets iGaming</h2>
<p>The studio’s Dare2Win vertical has garnered widespread popularity among Gen-Z and millennial players seeking fast-paced, intuitive gameplay with transparent odds and provably fair mechanics.</p>
<h2>Upcoming Releases</h2>
<p>Hacksaw announced plans to expand its cross-genre portfolio with seasonal multiplayer titles featuring interactive community chat and live leaderboard competitions.</p>',
      meta_title = 'Hacksaw Gaming Marks 150 Games with Dare2Win Innovation',
      meta_description = 'Hacksaw Gaming celebrates 150 certified titles, highlighting explosive growth in mobile arcade casino formats.',
      status = 'published',
      sort_order = 14,
      updated_at = NOW()
    WHERE slug = 'hacksaw-gaming-150-game-milestone-dare2win';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Hacksaw Gaming Reaches 150-Game Milestone with Unique "Dare2Win" Mobile Titles', 'hacksaw-gaming-150-game-milestone-dare2win', 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=1200&auto=format&fit=crop&q=80', '<p>Hacksaw Gaming has reached a major production milestone, surpassing 150 certified mobile-first casino games distributed across regulated markets globally.</p>
<h2>Arcade Meets iGaming</h2>
<p>The studio’s Dare2Win vertical has garnered widespread popularity among Gen-Z and millennial players seeking fast-paced, intuitive gameplay with transparent odds and provably fair mechanics.</p>
<h2>Upcoming Releases</h2>
<p>Hacksaw announced plans to expand its cross-genre portfolio with seasonal multiplayer titles featuring interactive community chat and live leaderboard competitions.</p>', 'Hacksaw Gaming Marks 150 Games with Dare2Win Innovation', 'Hacksaw Gaming celebrates 150 certified titles, highlighting explosive growth in mobile arcade casino formats.', 'published', 14, '2026-09-24T16:50:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #15: Australian Communications and Media Authority (ACMA) Blocks 45 Additional Illegal Gambling Domains
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'acma-blocks-45-additional-illegal-gambling-domains') THEN
    UPDATE "News" SET
      title = 'Australian Communications and Media Authority (ACMA) Blocks 45 Additional Illegal Gambling Domains',
      featured_image = 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The Australian Communications and Media Authority (ACMA) has directed local internet service providers (ISPs) to restrict access to 45 unlicensed online gambling websites.</p>
<h2>Interactive Gambling Act Enforcement</h2>
<p>Since ACMA’s first ISP blocking request in late 2019, more than 1,000 illegal gambling and affiliate portal domains have been successfully blocked under the Interactive Gambling Act 2001.</p>
<h2>Consumer Warning</h2>
<p>The regulator warned Australian players that unlicensed sites provide zero consumer dispute resolution or guaranteed payout safety.</p>',
      meta_title = 'Australia ACMA Blocks 45 Unlicensed Gambling Websites',
      meta_description = 'ACMA continues crackdown on unlicensed offshore gambling portals, requesting ISP blocks for 45 domains.',
      status = 'published',
      sort_order = 15,
      updated_at = NOW()
    WHERE slug = 'acma-blocks-45-additional-illegal-gambling-domains';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Australian Communications and Media Authority (ACMA) Blocks 45 Additional Illegal Gambling Domains', 'acma-blocks-45-additional-illegal-gambling-domains', 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=1200&auto=format&fit=crop&q=80', '<p>The Australian Communications and Media Authority (ACMA) has directed local internet service providers (ISPs) to restrict access to 45 unlicensed online gambling websites.</p>
<h2>Interactive Gambling Act Enforcement</h2>
<p>Since ACMA’s first ISP blocking request in late 2019, more than 1,000 illegal gambling and affiliate portal domains have been successfully blocked under the Interactive Gambling Act 2001.</p>
<h2>Consumer Warning</h2>
<p>The regulator warned Australian players that unlicensed sites provide zero consumer dispute resolution or guaranteed payout safety.</p>', 'Australia ACMA Blocks 45 Unlicensed Gambling Websites', 'ACMA continues crackdown on unlicensed offshore gambling portals, requesting ISP blocks for 45 domains.', 'published', 15, '2026-09-23T09:40:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #16: NetEnt Unveils 4K Graphical Remaster of Classic "Blood Suckers" with Preserved 98% RTP
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'netent-remasters-blood-suckers-4k-98-rtp') THEN
    UPDATE "News" SET
      title = 'NetEnt Unveils 4K Graphical Remaster of Classic "Blood Suckers" with Preserved 98% RTP',
      featured_image = 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>NetEnt has released a modern remastered edition of its legendary vampire-themed slot, <strong>Blood Suckers</strong>, upgrading all visual assets to high-definition 4K resolution.</p>
<h2>Preserving Mathematical Integrity</h2>
<p>Crucially for players, NetEnt confirmed that the game’s industry-leading 98.00% theoretical Return to Player (RTP) and low-volatility profile remain completely unchanged from the original 2013 classic.</p>
<h2>Cross-Device Optimization</h2>
<p>The remaster features enhanced HTML5 animations, revamped coffin bonus animations, and a touch-responsive UI designed for contemporary smartphones.</p>',
      meta_title = 'NetEnt Remasters Blood Suckers Slot with Original 98% RTP',
      meta_description = 'NetEnt releases 4K remastered Blood Suckers slot, preserving the legendary 98.00% RTP and bonus coffin feature.',
      status = 'published',
      sort_order = 16,
      updated_at = NOW()
    WHERE slug = 'netent-remasters-blood-suckers-4k-98-rtp';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'NetEnt Unveils 4K Graphical Remaster of Classic "Blood Suckers" with Preserved 98% RTP', 'netent-remasters-blood-suckers-4k-98-rtp', 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80', '<p>NetEnt has released a modern remastered edition of its legendary vampire-themed slot, <strong>Blood Suckers</strong>, upgrading all visual assets to high-definition 4K resolution.</p>
<h2>Preserving Mathematical Integrity</h2>
<p>Crucially for players, NetEnt confirmed that the game’s industry-leading 98.00% theoretical Return to Player (RTP) and low-volatility profile remain completely unchanged from the original 2013 classic.</p>
<h2>Cross-Device Optimization</h2>
<p>The remaster features enhanced HTML5 animations, revamped coffin bonus animations, and a touch-responsive UI designed for contemporary smartphones.</p>', 'NetEnt Remasters Blood Suckers Slot with Original 98% RTP', 'NetEnt releases 4K remastered Blood Suckers slot, preserving the legendary 98.00% RTP and bonus coffin feature.', 'published', 16, '2026-09-22T14:10:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #17: Ontario iGaming Market Generates Record $720M in Gross Gaming Revenue in Q3 2026
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'ontario-igaming-market-records-720m-ggr-q3-2026') THEN
    UPDATE "News" SET
      title = 'Ontario iGaming Market Generates Record $720M in Gross Gaming Revenue in Q3 2026',
      featured_image = 'https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?w=1200&auto=format&fit=crop&q=80',
      content = '<p>iGaming Ontario (iGO) has released its official third-quarter performance metrics, revealing record gaming volume across legal commercial operators.</p>
<h2>Sustained Channelization Rate</h2>
<p>Independent audits confirm that over 88% of all online gambling activity in Ontario now occurs on regulated, provincially authorized platforms, achieving the highest legal channelization rate in North America.</p>
<h2>Casino Games Lead the Way</h2>
<p>Casino games—including online slots and live dealer tables—accounted for 82% of total wagers, with sports betting capturing the remaining 18%.</p>',
      meta_title = 'Ontario iGaming Generates $720M in Record Q3 Performance',
      meta_description = 'Ontario legal gambling market sees 88% player channelization and record quarterly gross revenue.',
      status = 'published',
      sort_order = 17,
      updated_at = NOW()
    WHERE slug = 'ontario-igaming-market-records-720m-ggr-q3-2026';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Ontario iGaming Market Generates Record $720M in Gross Gaming Revenue in Q3 2026', 'ontario-igaming-market-records-720m-ggr-q3-2026', 'https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?w=1200&auto=format&fit=crop&q=80', '<p>iGaming Ontario (iGO) has released its official third-quarter performance metrics, revealing record gaming volume across legal commercial operators.</p>
<h2>Sustained Channelization Rate</h2>
<p>Independent audits confirm that over 88% of all online gambling activity in Ontario now occurs on regulated, provincially authorized platforms, achieving the highest legal channelization rate in North America.</p>
<h2>Casino Games Lead the Way</h2>
<p>Casino games—including online slots and live dealer tables—accounted for 82% of total wagers, with sports betting capturing the remaining 18%.</p>', 'Ontario iGaming Generates $720M in Record Q3 Performance', 'Ontario legal gambling market sees 88% player channelization and record quarterly gross revenue.', 'published', 17, '2026-09-21T10:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #18: New Infinite Blackjack Technology Eliminates Seat Waiting Times Across Online Live Casinos
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'infinite-blackjack-technology-eliminates-seat-waiting') THEN
    UPDATE "News" SET
      title = 'New Infinite Blackjack Technology Eliminates Seat Waiting Times Across Online Live Casinos',
      featured_image = 'https://images.unsplash.com/photo-1520697830682-bbb6e85e2b0b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Waiting for an open seat at virtual live dealer blackjack tables has become a relic of the past thanks to rapid operator adoption of "Infinite Blackjack" technology.</p>
<h2>Independent Player Decision Trees</h2>
<p>While the real human dealer deals a single set of community starting cards, optical sensors and custom software allow each connected player to hit, stand, double down, or split independently with their own digital bankroll.</p>
<h2>Side Bet Variety</h2>
<p>The tables feature popular optional side wagers including Any Pair, 21+3, Hot 3, and Bust It, catering to casual and high-stakes players alike.</p>',
      meta_title = 'Infinite Blackjack Tech Resolves Live Dealer Seat Capacity Bottlenecks',
      meta_description = 'Online live casinos adopt scalable common-draw blackjack, enabling unlimited players at single physical tables.',
      status = 'published',
      sort_order = 18,
      updated_at = NOW()
    WHERE slug = 'infinite-blackjack-technology-eliminates-seat-waiting';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'New Infinite Blackjack Technology Eliminates Seat Waiting Times Across Online Live Casinos', 'infinite-blackjack-technology-eliminates-seat-waiting', 'https://images.unsplash.com/photo-1520697830682-bbb6e85e2b0b?w=1200&auto=format&fit=crop&q=80', '<p>Waiting for an open seat at virtual live dealer blackjack tables has become a relic of the past thanks to rapid operator adoption of "Infinite Blackjack" technology.</p>
<h2>Independent Player Decision Trees</h2>
<p>While the real human dealer deals a single set of community starting cards, optical sensors and custom software allow each connected player to hit, stand, double down, or split independently with their own digital bankroll.</p>
<h2>Side Bet Variety</h2>
<p>The tables feature popular optional side wagers including Any Pair, 21+3, Hot 3, and Bust It, catering to casual and high-stakes players alike.</p>', 'Infinite Blackjack Tech Resolves Live Dealer Seat Capacity Bottlenecks', 'Online live casinos adopt scalable common-draw blackjack, enabling unlimited players at single physical tables.', 'published', 18, '2026-09-20T17:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #19: Micro-Betting Wagers Surpass 40% of All In-Play Sportsbook Bets During Major European Leagues
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'micro-betting-surpasses-40-percent-in-play-wagers') THEN
    UPDATE "News" SET
      title = 'Micro-Betting Wagers Surpass 40% of All In-Play Sportsbook Bets During Major European Leagues',
      featured_image = 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Real-time micro-betting has seen explosive growth across regulated sportsbooks, accounting for over 40% of all in-play wagering during European football matches.</p>
<h2>Ultra-Fast Data Feeds</h2>
<p>Supported by official low-latency stadium optical feeds delivering data in under 200 milliseconds, operators now offer wagers that resolve within seconds rather than at the end of a match.</p>
<h2>Engagement and Caution</h2>
<p>While sportsbooks praise the increased engagement, responsible gambling advocates emphasize the need for session duration and spending limit reminders during fast-paced in-play sessions.</p>',
      meta_title = 'Micro-Betting Captures 40% of In-Play Sportsbook Wagering',
      meta_description = 'Fast-resolution instant sports betting markets surge in popularity across European soccer and tennis leagues.',
      status = 'published',
      sort_order = 19,
      updated_at = NOW()
    WHERE slug = 'micro-betting-surpasses-40-percent-in-play-wagers';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Micro-Betting Wagers Surpass 40% of All In-Play Sportsbook Bets During Major European Leagues', 'micro-betting-surpasses-40-percent-in-play-wagers', 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=1200&auto=format&fit=crop&q=80', '<p>Real-time micro-betting has seen explosive growth across regulated sportsbooks, accounting for over 40% of all in-play wagering during European football matches.</p>
<h2>Ultra-Fast Data Feeds</h2>
<p>Supported by official low-latency stadium optical feeds delivering data in under 200 milliseconds, operators now offer wagers that resolve within seconds rather than at the end of a match.</p>
<h2>Engagement and Caution</h2>
<p>While sportsbooks praise the increased engagement, responsible gambling advocates emphasize the need for session duration and spending limit reminders during fast-paced in-play sessions.</p>', 'Micro-Betting Captures 40% of In-Play Sportsbook Wagering', 'Fast-resolution instant sports betting markets surge in popularity across European soccer and tennis leagues.', 'published', 19, '2026-09-19T11:50:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #20: Solana-Powered Crash Games Gain Traction with Instant Micro-Wagers and Provably Fair Audits
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'solana-powered-crash-games-gain-traction-crypto-casinos') THEN
    UPDATE "News" SET
      title = 'Solana-Powered Crash Games Gain Traction with Instant Micro-Wagers and Provably Fair Audits',
      featured_image = 'https://images.unsplash.com/photo-1642543492481-44e81e3914a7?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A new wave of decentralized iGaming applications built on the Solana blockchain has captured substantial market share within the crypto casino community.</p>
<h2>Sub-Second Multiplier Climbs</h2>
<p>By leveraging Solana’s 400-millisecond block finality, crash games allow hundreds of concurrent players to place bets, watch multipliers climb, and execute instant cashouts directly from self-custody wallets.</p>
<h2>Zero Trust Required</h2>
<p>Every multiplier seed generation is mathematically anchored to public blockchain transaction hashes, providing undeniable transparency without relying on closed operator servers.</p>',
      meta_title = 'Solana Blockchain Powers Next-Gen Decentralized Crash Casino Games',
      meta_description = 'Crypto casinos leverage Solana network speed for instant provably fair crash gaming with direct wallet cashouts.',
      status = 'published',
      sort_order = 20,
      updated_at = NOW()
    WHERE slug = 'solana-powered-crash-games-gain-traction-crypto-casinos';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Solana-Powered Crash Games Gain Traction with Instant Micro-Wagers and Provably Fair Audits', 'solana-powered-crash-games-gain-traction-crypto-casinos', 'https://images.unsplash.com/photo-1642543492481-44e81e3914a7?w=1200&auto=format&fit=crop&q=80', '<p>A new wave of decentralized iGaming applications built on the Solana blockchain has captured substantial market share within the crypto casino community.</p>
<h2>Sub-Second Multiplier Climbs</h2>
<p>By leveraging Solana’s 400-millisecond block finality, crash games allow hundreds of concurrent players to place bets, watch multipliers climb, and execute instant cashouts directly from self-custody wallets.</p>
<h2>Zero Trust Required</h2>
<p>Every multiplier seed generation is mathematically anchored to public blockchain transaction hashes, providing undeniable transparency without relying on closed operator servers.</p>', 'Solana Blockchain Powers Next-Gen Decentralized Crash Casino Games', 'Crypto casinos leverage Solana network speed for instant provably fair crash gaming with direct wallet cashouts.', 'published', 20, '2026-09-18T15:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #21: Flutter Entertainment Completes Strategic Acquisition to Expand Regulated Presence in Eastern Europe
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'flutter-entertainment-acquires-eastern-european-gaming-group') THEN
    UPDATE "News" SET
      title = 'Flutter Entertainment Completes Strategic Acquisition to Expand Regulated Presence in Eastern Europe',
      featured_image = 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Flutter Entertainment plc has finalized a landmark €350 million acquisition of a leading Eastern European omnichannel gaming operator.</p>
<h2>Expanding Core Moats</h2>
<p>The transaction brings more than 2 million active retail and online players into Flutter’s proprietary global tech stack, boosting group profitability and regional scale.</p>
<h2>Global Strategy Alignment</h2>
<p>Flutter executives confirmed that the acquisition adheres to the company’s stated strategy of acquiring local podium positions in high-growth regulated jurisdictions.</p>',
      meta_title = 'Flutter Entertainment Expands Leadership with Major European Acquisition',
      meta_description = 'Flutter Entertainment acquires leading European gaming operator to bolster regional regulated market share.',
      status = 'published',
      sort_order = 21,
      updated_at = NOW()
    WHERE slug = 'flutter-entertainment-acquires-eastern-european-gaming-group';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Flutter Entertainment Completes Strategic Acquisition to Expand Regulated Presence in Eastern Europe', 'flutter-entertainment-acquires-eastern-european-gaming-group', 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=1200&auto=format&fit=crop&q=80', '<p>Flutter Entertainment plc has finalized a landmark €350 million acquisition of a leading Eastern European omnichannel gaming operator.</p>
<h2>Expanding Core Moats</h2>
<p>The transaction brings more than 2 million active retail and online players into Flutter’s proprietary global tech stack, boosting group profitability and regional scale.</p>
<h2>Global Strategy Alignment</h2>
<p>Flutter executives confirmed that the acquisition adheres to the company’s stated strategy of acquiring local podium positions in high-growth regulated jurisdictions.</p>', 'Flutter Entertainment Expands Leadership with Major European Acquisition', 'Flutter Entertainment acquires leading European gaming operator to bolster regional regulated market share.', 'published', 21, '2026-09-17T09:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #22: 95% of Casino Support Queries Now Handled by Intelligent Virtual Agents in Under 30 Seconds
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'ai-customer-support-resolves-queries-under-30-seconds') THEN
    UPDATE "News" SET
      title = '95% of Casino Support Queries Now Handled by Intelligent Virtual Agents in Under 30 Seconds',
      featured_image = 'https://images.unsplash.com/photo-1551836022-d5d88e9218df?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Online casino player support has undergone a dramatic transformation over the past year with the deployment of specialized generative AI support agents.</p>
<h2>Instant Resolution of Common Issues</h2>
<p>The AI agents accurately address questions regarding bonus rollover progress, payment gateway status, and document upload requirements in over 20 languages, achieving high first-contact resolution rates.</p>
<h2>Seamless Human Escalation</h2>
<p>Complex account disputes or sensitive safer gambling conversations are automatically escalated to dedicated human specialists with full context pre-summarized.</p>',
      meta_title = 'AI Virtual Agents Revolutionize 24/7 Online Casino Customer Support',
      meta_description = 'Casino customer service times plummet as AI virtual assistants handle 95% of routine player inquiries instantly.',
      status = 'published',
      sort_order = 22,
      updated_at = NOW()
    WHERE slug = 'ai-customer-support-resolves-queries-under-30-seconds';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, '95% of Casino Support Queries Now Handled by Intelligent Virtual Agents in Under 30 Seconds', 'ai-customer-support-resolves-queries-under-30-seconds', 'https://images.unsplash.com/photo-1551836022-d5d88e9218df?w=1200&auto=format&fit=crop&q=80', '<p>Online casino player support has undergone a dramatic transformation over the past year with the deployment of specialized generative AI support agents.</p>
<h2>Instant Resolution of Common Issues</h2>
<p>The AI agents accurately address questions regarding bonus rollover progress, payment gateway status, and document upload requirements in over 20 languages, achieving high first-contact resolution rates.</p>
<h2>Seamless Human Escalation</h2>
<p>Complex account disputes or sensitive safer gambling conversations are automatically escalated to dedicated human specialists with full context pre-summarized.</p>', 'AI Virtual Agents Revolutionize 24/7 Online Casino Customer Support', 'Casino customer service times plummet as AI virtual assistants handle 95% of routine player inquiries instantly.', 'published', 22, '2026-09-16T13:40:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #23: German Gambling Authority (GGL) Reports Significant Progress in Combatting Illegal Offshore Black Market
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'german-ggl-reports-progress-combatting-illegal-black-market') THEN
    UPDATE "News" SET
      title = 'German Gambling Authority (GGL) Reports Significant Progress in Combatting Illegal Offshore Black Market',
      featured_image = 'https://images.unsplash.com/photo-1450133064473-71024230f91b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The Gemeinsame Glücksspielbehörde der Länder (GGL), Germany’s unified gambling regulator, has published its annual enforcement report detailing substantial reductions in unregulated market traffic.</p>
<h2>Coordinated Payment Blocking</h2>
<p>Working alongside major European banks and payment providers, the GGL successfully cut off payment rails for dozens of offshore operators targeting German citizens without a domestic license.</p>
<h2>Call for Flexible Regulation</h2>
<p>Licensed German operators urged the regulator to review restrictive deposit and bet caps to further incentivize players to remain within legal domestic offerings.</p>',
      meta_title = 'German GGL Cracks Down on Illegal Offshore Gambling Portals',
      meta_description = 'Germany gambling authority GGL publishes enforcement results against unregulated black market gaming operators.',
      status = 'published',
      sort_order = 23,
      updated_at = NOW()
    WHERE slug = 'german-ggl-reports-progress-combatting-illegal-black-market';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'German Gambling Authority (GGL) Reports Significant Progress in Combatting Illegal Offshore Black Market', 'german-ggl-reports-progress-combatting-illegal-black-market', 'https://images.unsplash.com/photo-1450133064473-71024230f91b?w=1200&auto=format&fit=crop&q=80', '<p>The Gemeinsame Glücksspielbehörde der Länder (GGL), Germany’s unified gambling regulator, has published its annual enforcement report detailing substantial reductions in unregulated market traffic.</p>
<h2>Coordinated Payment Blocking</h2>
<p>Working alongside major European banks and payment providers, the GGL successfully cut off payment rails for dozens of offshore operators targeting German citizens without a domestic license.</p>
<h2>Call for Flexible Regulation</h2>
<p>Licensed German operators urged the regulator to review restrictive deposit and bet caps to further incentivize players to remain within legal domestic offerings.</p>', 'German GGL Cracks Down on Illegal Offshore Gambling Portals', 'Germany gambling authority GGL publishes enforcement results against unregulated black market gaming operators.', 'published', 23, '2026-09-15T10:30:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #24: Virtual Reality Live Casino Game Shows Enter Beta Testing with Spatial Audio and Haptic Feedback
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'vr-live-casino-game-shows-enter-beta-testing') THEN
    UPDATE "News" SET
      title = 'Virtual Reality Live Casino Game Shows Enter Beta Testing with Spatial Audio and Haptic Feedback',
      featured_image = 'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The frontier of live casino entertainment is moving into virtual reality, with leading studios launching closed beta trials of spatial-computing game shows.</p>
<h2>Lifelike Studio Immersion</h2>
<p>Equipped with Meta Quest or Apple Vision Pro headsets, players can walk onto virtual game show stages, interact with human hosts in real-time 3D, and interact with giant physical prize wheels.</p>
<h2>Social Features</h2>
<p>Customizable 3D avatars enable players to sit at shared tables with friends worldwide while enjoying spatial audio conversations.</p>',
      meta_title = 'Virtual Reality Live Casino Game Shows Begin Closed Beta Testing',
      meta_description = 'Next-gen VR live dealer game shows enter beta trials, offering immersive spatial audio and interactive 3D studios.',
      status = 'published',
      sort_order = 24,
      updated_at = NOW()
    WHERE slug = 'vr-live-casino-game-shows-enter-beta-testing';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Virtual Reality Live Casino Game Shows Enter Beta Testing with Spatial Audio and Haptic Feedback', 'vr-live-casino-game-shows-enter-beta-testing', 'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=1200&auto=format&fit=crop&q=80', '<p>The frontier of live casino entertainment is moving into virtual reality, with leading studios launching closed beta trials of spatial-computing game shows.</p>
<h2>Lifelike Studio Immersion</h2>
<p>Equipped with Meta Quest or Apple Vision Pro headsets, players can walk onto virtual game show stages, interact with human hosts in real-time 3D, and interact with giant physical prize wheels.</p>
<h2>Social Features</h2>
<p>Customizable 3D avatars enable players to sit at shared tables with friends worldwide while enjoying spatial audio conversations.</p>', 'Virtual Reality Live Casino Game Shows Begin Closed Beta Testing', 'Next-gen VR live dealer game shows enter beta trials, offering immersive spatial audio and interactive 3D studios.', 'published', 24, '2026-09-14T16:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #25: Facial Biometric KYC Verification Becomes Standard Across Regulated European Online Casinos
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'facial-biometric-kyc-verification-becomes-standard') THEN
    UPDATE "News" SET
      title = 'Facial Biometric KYC Verification Becomes Standard Across Regulated European Online Casinos',
      featured_image = 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Identity verification at online casinos has taken a major technological step forward as European platforms integrate AI-powered facial biometric matching.</p>
<h2>60-Second Liveness Verification</h2>
<p>Instead of waiting 48 hours for compliance staff to manually check utility bills, players take a 3D selfie video that is matched in real time against their official government passport photo.</p>
<h2>Defeating Fraud and Underage Play</h2>
<p>Security audits reveal that biometric authentication reduces synthetic identity fraud and underage gambling attempts by more than 99%.</p>',
      meta_title = 'Biometric Face Verification Replaces Slow Document KYC in Casinos',
      meta_description = 'Regulated online casinos adopt facial biometric liveness checks to complete player KYC in under 60 seconds.',
      status = 'published',
      sort_order = 25,
      updated_at = NOW()
    WHERE slug = 'facial-biometric-kyc-verification-becomes-standard';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Facial Biometric KYC Verification Becomes Standard Across Regulated European Online Casinos', 'facial-biometric-kyc-verification-becomes-standard', 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&auto=format&fit=crop&q=80', '<p>Identity verification at online casinos has taken a major technological step forward as European platforms integrate AI-powered facial biometric matching.</p>
<h2>60-Second Liveness Verification</h2>
<p>Instead of waiting 48 hours for compliance staff to manually check utility bills, players take a 3D selfie video that is matched in real time against their official government passport photo.</p>
<h2>Defeating Fraud and Underage Play</h2>
<p>Security audits reveal that biometric authentication reduces synthetic identity fraud and underage gambling attempts by more than 99%.</p>', 'Biometric Face Verification Replaces Slow Document KYC in Casinos', 'Regulated online casinos adopt facial biometric liveness checks to complete player KYC in under 60 seconds.', 'published', 25, '2026-09-13T11:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #26: Playtech Launches "Multi-Table Grandview" Allowing Players to Wager on Four Live Tables Simultaneously
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'playtech-launches-multi-table-grandview-live-suite') THEN
    UPDATE "News" SET
      title = 'Playtech Launches "Multi-Table Grandview" Allowing Players to Wager on Four Live Tables Simultaneously',
      featured_image = 'https://images.unsplash.com/photo-1541278107931-e006523892df?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Playtech has introduced its most advanced live dealer interface yet with the release of the <strong>Multi-Table Grandview</strong> platform.</p>
<h2>Quad-Screen Streaming</h2>
<p>The interface lets players dock up to four independent live table video feeds side by side without performance degradation, supporting automated bet sizing and strategy presets.</p>
<h2>Customizable Layouts</h2>
<p>Players can mix European Roulette, Speed Baccarat, and Quantum Blackjack in customizable grid arrangements on desktop or tablet monitors.</p>',
      meta_title = 'Playtech Unveils Multi-Table Grandview Live Dealer Platform',
      meta_description = 'Playtech launches quad-screen live dealer suite enabling simultaneous play across four live casino tables.',
      status = 'published',
      sort_order = 26,
      updated_at = NOW()
    WHERE slug = 'playtech-launches-multi-table-grandview-live-suite';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Playtech Launches "Multi-Table Grandview" Allowing Players to Wager on Four Live Tables Simultaneously', 'playtech-launches-multi-table-grandview-live-suite', 'https://images.unsplash.com/photo-1541278107931-e006523892df?w=1200&auto=format&fit=crop&q=80', '<p>Playtech has introduced its most advanced live dealer interface yet with the release of the <strong>Multi-Table Grandview</strong> platform.</p>
<h2>Quad-Screen Streaming</h2>
<p>The interface lets players dock up to four independent live table video feeds side by side without performance degradation, supporting automated bet sizing and strategy presets.</p>
<h2>Customizable Layouts</h2>
<p>Players can mix European Roulette, Speed Baccarat, and Quantum Blackjack in customizable grid arrangements on desktop or tablet monitors.</p>', 'Playtech Unveils Multi-Table Grandview Live Dealer Platform', 'Playtech launches quad-screen live dealer suite enabling simultaneous play across four live casino tables.', 'published', 26, '2026-09-12T14:45:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #27: Study Reveals Mandatory Upfront Deposit Limits Reduce Risky Gambling Behavior by 38%
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'study-reveals-mandatory-deposit-limits-reduce-risky-behavior') THEN
    UPDATE "News" SET
      title = 'Study Reveals Mandatory Upfront Deposit Limits Reduce Risky Gambling Behavior by 38%',
      featured_image = 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A landmark peer-reviewed study analyzing over 500,000 active online casino accounts has demonstrated the profound impact of proactive limit-setting.</p>
<h2>Budget Anchoring Effect</h2>
<p>Players required to define weekly or monthly loss ceilings during onboarding exhibited a 38% decrease in chasing losses and a 50% drop in voluntary self-exclusion requests.</p>
<h2>Policy Recommendations</h2>
<p>Researchers urged international regulatory bodies to adopt universal upfront budgeting prompts across all remote gambling platforms.</p>',
      meta_title = 'Research Proves Upfront Deposit Limits Protect Casino Players',
      meta_description = 'Study shows requiring players to choose deposit limits at signup cuts risky gambling behavior by 38%.',
      status = 'published',
      sort_order = 27,
      updated_at = NOW()
    WHERE slug = 'study-reveals-mandatory-deposit-limits-reduce-risky-behavior';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Study Reveals Mandatory Upfront Deposit Limits Reduce Risky Gambling Behavior by 38%', 'study-reveals-mandatory-deposit-limits-reduce-risky-behavior', 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80', '<p>A landmark peer-reviewed study analyzing over 500,000 active online casino accounts has demonstrated the profound impact of proactive limit-setting.</p>
<h2>Budget Anchoring Effect</h2>
<p>Players required to define weekly or monthly loss ceilings during onboarding exhibited a 38% decrease in chasing losses and a 50% drop in voluntary self-exclusion requests.</p>
<h2>Policy Recommendations</h2>
<p>Researchers urged international regulatory bodies to adopt universal upfront budgeting prompts across all remote gambling platforms.</p>', 'Research Proves Upfront Deposit Limits Protect Casino Players', 'Study shows requiring players to choose deposit limits at signup cuts risky gambling behavior by 38%.', 'published', 27, '2026-09-11T09:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #28: Apple Pay Expands Direct Biometric Casino Deposits Across 15 Regulated European Markets
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'apple-pay-expands-direct-casino-deposits-europe') THEN
    UPDATE "News" SET
      title = 'Apple Pay Expands Direct Biometric Casino Deposits Across 15 Regulated European Markets',
      featured_image = 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Apple Pay has expanded its authorized merchant categories to support regulated iGaming deposits across 15 European countries.</p>
<h2>Tokenized Card Protection</h2>
<p>By utilizing Apple’s tokenization technology, the player’s actual bank card numbers are never transmitted to or stored by the casino platform, virtually eliminating online fraud risk.</p>
<h2>Fast Cashier Flow</h2>
<p>Transactions complete in under three seconds with native biometric FaceID confirmation, making it a favorite for mobile casino players.</p>',
      meta_title = 'Apple Pay Biometric Casino Deposits Roll Out Across Europe',
      meta_description = 'Apple Pay expands secure tokenized deposit support to online casino players in 15 regulated European jurisdictions.',
      status = 'published',
      sort_order = 28,
      updated_at = NOW()
    WHERE slug = 'apple-pay-expands-direct-casino-deposits-europe';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Apple Pay Expands Direct Biometric Casino Deposits Across 15 Regulated European Markets', 'apple-pay-expands-direct-casino-deposits-europe', 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=1200&auto=format&fit=crop&q=80', '<p>Apple Pay has expanded its authorized merchant categories to support regulated iGaming deposits across 15 European countries.</p>
<h2>Tokenized Card Protection</h2>
<p>By utilizing Apple’s tokenization technology, the player’s actual bank card numbers are never transmitted to or stored by the casino platform, virtually eliminating online fraud risk.</p>
<h2>Fast Cashier Flow</h2>
<p>Transactions complete in under three seconds with native biometric FaceID confirmation, making it a favorite for mobile casino players.</p>', 'Apple Pay Biometric Casino Deposits Roll Out Across Europe', 'Apple Pay expands secure tokenized deposit support to online casino players in 15 regulated European jurisdictions.', 'published', 28, '2026-09-10T15:10:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #29: Counter-Strike 2 Esports Betting Turnover Surpasses Traditional Tennis at Top European Sportsbooks
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'cs2-esports-betting-turnover-surpasses-tennis') THEN
    UPDATE "News" SET
      title = 'Counter-Strike 2 Esports Betting Turnover Surpasses Traditional Tennis at Top European Sportsbooks',
      featured_image = 'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Esports has officially entered the top tier of international sports betting markets, with Counter-Strike 2 (CS2) wagering volume surpassing tennis across several major European sportsbooks.</p>
<h2>Year-Round Event Continuity</h2>
<p>Unlike seasonal traditional sports, esports tournaments operate virtually year-round with high broadcast viewership across Twitch and YouTube, driving sustained in-play betting engagement.</p>
<h2>Specialized Prop Bets</h2>
<p>Markets including pistol round winners, total maps played, and individual player kill handicaps represent the most traded wagering lines.</p>',
      meta_title = 'Counter-Strike 2 Betting Surges Ahead of Traditional Tennis',
      meta_description = 'CS2 esports betting turnover climbs into the top tier of sportsbook volume globally.',
      status = 'published',
      sort_order = 29,
      updated_at = NOW()
    WHERE slug = 'cs2-esports-betting-turnover-surpasses-tennis';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Counter-Strike 2 Esports Betting Turnover Surpasses Traditional Tennis at Top European Sportsbooks', 'cs2-esports-betting-turnover-surpasses-tennis', 'https://images.unsplash.com/photo-1511512578047-dfb367046420?w=1200&auto=format&fit=crop&q=80', '<p>Esports has officially entered the top tier of international sports betting markets, with Counter-Strike 2 (CS2) wagering volume surpassing tennis across several major European sportsbooks.</p>
<h2>Year-Round Event Continuity</h2>
<p>Unlike seasonal traditional sports, esports tournaments operate virtually year-round with high broadcast viewership across Twitch and YouTube, driving sustained in-play betting engagement.</p>
<h2>Specialized Prop Bets</h2>
<p>Markets including pistol round winners, total maps played, and individual player kill handicaps represent the most traded wagering lines.</p>', 'Counter-Strike 2 Betting Surges Ahead of Traditional Tennis', 'CS2 esports betting turnover climbs into the top tier of sportsbook volume globally.', 'published', 29, '2026-09-09T12:35:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #30: Pragmatic Play Live Debuts "Sweet Bonanza Candyland 2" with Enhanced 3D Bonus Rounds
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'pragmatic-play-debuts-sweet-bonanza-candyland-2') THEN
    UPDATE "News" SET
      title = 'Pragmatic Play Live Debuts "Sweet Bonanza Candyland 2" with Enhanced 3D Bonus Rounds',
      featured_image = 'https://images.unsplash.com/photo-1579373903781-fd5c0c30c4cd?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Pragmatic Play Live has officially launched the eagerly anticipated sequel to its smash-hit game show, <strong>Sweet Bonanza Candyland 2</strong>.</p>
<h2>Augmented Reality Features</h2>
<p>The upgraded live wheel introduces dynamic AR candy characters that trigger immersive secondary bonus rounds, including the "Sugar Bomb Multiplier" and the interactive "Candy Drop" pachinko wall.</p>
<h2>Global Player Appeal</h2>
<p>Broadcast 24/7 from a colorful dedicated studio in Bucharest, the game combines classic wheel betting with slot-style cascading win mechanics.</p>',
      meta_title = 'Sweet Bonanza Candyland 2 Released by Pragmatic Play Live',
      meta_description = 'Pragmatic Play Live launches Sweet Bonanza Candyland 2 with interactive 3D bonus games and massive multipliers.',
      status = 'published',
      sort_order = 30,
      updated_at = NOW()
    WHERE slug = 'pragmatic-play-debuts-sweet-bonanza-candyland-2';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Pragmatic Play Live Debuts "Sweet Bonanza Candyland 2" with Enhanced 3D Bonus Rounds', 'pragmatic-play-debuts-sweet-bonanza-candyland-2', 'https://images.unsplash.com/photo-1579373903781-fd5c0c30c4cd?w=1200&auto=format&fit=crop&q=80', '<p>Pragmatic Play Live has officially launched the eagerly anticipated sequel to its smash-hit game show, <strong>Sweet Bonanza Candyland 2</strong>.</p>
<h2>Augmented Reality Features</h2>
<p>The upgraded live wheel introduces dynamic AR candy characters that trigger immersive secondary bonus rounds, including the "Sugar Bomb Multiplier" and the interactive "Candy Drop" pachinko wall.</p>
<h2>Global Player Appeal</h2>
<p>Broadcast 24/7 from a colorful dedicated studio in Bucharest, the game combines classic wheel betting with slot-style cascading win mechanics.</p>', 'Sweet Bonanza Candyland 2 Released by Pragmatic Play Live', 'Pragmatic Play Live launches Sweet Bonanza Candyland 2 with interactive 3D bonus games and massive multipliers.', 'published', 30, '2026-09-08T16:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #31: Rise of "Zero-Wager" Casino Bonuses: Why Transparent Promotions are Outperforming Big Match Bonuses
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'rise-of-zero-wager-casino-bonuses-2026') THEN
    UPDATE "News" SET
      title = 'Rise of "Zero-Wager" Casino Bonuses: Why Transparent Promotions are Outperforming Big Match Bonuses',
      featured_image = 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A pronounced shift in player preference is sweeping the online casino market as operators offering "zero-wagering" bonuses report record customer retention rates.</p>
<h2>Simplicity Trumps Large Headline Numbers</h2>
<p>While traditional 200% match bonuses often come with restrictive 45x or 50x wagering requirements and low maximum win caps, zero-wager promotions allow players to keep and withdraw 100% of their free spin winnings immediately.</p>
<h2>Trust-Building Strategy</h2>
<p>Casinos adopting this transparent approach note that player satisfaction scores and average lifetime value (LTV) increase significantly when players are free from fine-print rollover frustration.</p>',
      meta_title = 'Zero-Wager Casino Promotions Gain Dominance in Player Preference',
      meta_description = 'Casino players embrace wager-free bonus spins with instant cashouts over complex high-rollover deposit matches.',
      status = 'published',
      sort_order = 31,
      updated_at = NOW()
    WHERE slug = 'rise-of-zero-wager-casino-bonuses-2026';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Rise of "Zero-Wager" Casino Bonuses: Why Transparent Promotions are Outperforming Big Match Bonuses', 'rise-of-zero-wager-casino-bonuses-2026', 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80', '<p>A pronounced shift in player preference is sweeping the online casino market as operators offering "zero-wagering" bonuses report record customer retention rates.</p>
<h2>Simplicity Trumps Large Headline Numbers</h2>
<p>While traditional 200% match bonuses often come with restrictive 45x or 50x wagering requirements and low maximum win caps, zero-wager promotions allow players to keep and withdraw 100% of their free spin winnings immediately.</p>
<h2>Trust-Building Strategy</h2>
<p>Casinos adopting this transparent approach note that player satisfaction scores and average lifetime value (LTV) increase significantly when players are free from fine-print rollover frustration.</p>', 'Zero-Wager Casino Promotions Gain Dominance in Player Preference', 'Casino players embrace wager-free bonus spins with instant cashouts over complex high-rollover deposit matches.', 'published', 31, '2026-09-07T10:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #32: Swedish Gambling Authority (Spelinspektionen) Implements Updated Tax Framework and Software B2B Licenses
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'sweden-spelinspektionen-tax-framework-b2b-licenses') THEN
    UPDATE "News" SET
      title = 'Swedish Gambling Authority (Spelinspektionen) Implements Updated Tax Framework and Software B2B Licenses',
      featured_image = 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Sweden’s gaming regulator, Spelinspektionen, has implemented the latest adjustments to the Swedish Gambling Act, increasing the commercial gaming tax rate from 18% to 22% of gross gaming revenue.</p>
<h2>Mandatory Software Supplier Licenses</h2>
<p>Under the new mandates, every game studio supplying software to Swedish online casinos must hold a certified B2B gaming software permit, preventing unlicensed offshore content from reaching Swedish consumers.</p>
<h2>High Channelization Maintained</h2>
<p>Spelinspektionen confirmed that Swedish player participation within the regulated domestic market remains above 85%.</p>',
      meta_title = 'Sweden Enacts 22% Gaming Tax Rate and Mandatory B2B Licenses',
      meta_description = 'Spelinspektionen updates Swedish gaming framework with 22% GGR tax rate and strict game supplier licensing.',
      status = 'published',
      sort_order = 32,
      updated_at = NOW()
    WHERE slug = 'sweden-spelinspektionen-tax-framework-b2b-licenses';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Swedish Gambling Authority (Spelinspektionen) Implements Updated Tax Framework and Software B2B Licenses', 'sweden-spelinspektionen-tax-framework-b2b-licenses', 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=1200&auto=format&fit=crop&q=80', '<p>Sweden’s gaming regulator, Spelinspektionen, has implemented the latest adjustments to the Swedish Gambling Act, increasing the commercial gaming tax rate from 18% to 22% of gross gaming revenue.</p>
<h2>Mandatory Software Supplier Licenses</h2>
<p>Under the new mandates, every game studio supplying software to Swedish online casinos must hold a certified B2B gaming software permit, preventing unlicensed offshore content from reaching Swedish consumers.</p>
<h2>High Channelization Maintained</h2>
<p>Spelinspektionen confirmed that Swedish player participation within the regulated domestic market remains above 85%.</p>', 'Sweden Enacts 22% Gaming Tax Rate and Mandatory B2B Licenses', 'Spelinspektionen updates Swedish gaming framework with 22% GGR tax rate and strict game supplier licensing.', 'published', 32, '2026-09-06T14:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #33: Push Gaming Releases "Wild Swarm 3" with Upgraded Hive Collection and 25,000x Max Win
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'push-gaming-releases-wild-swarm-3') THEN
    UPDATE "News" SET
      title = 'Push Gaming Releases "Wild Swarm 3" with Upgraded Hive Collection and 25,000x Max Win',
      featured_image = 'https://images.unsplash.com/photo-1470115636492-6d2b56f9146d?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Push Gaming has launched the third iteration of its acclaimed hive-building slot franchise: <strong>Wild Swarm 3</strong>.</p>
<h2>Upgraded Swarm Mechanics</h2>
<p>Featuring a 5x4 grid and 20 paylines, the sequel retains the popular bees-and-hive collection mechanic while introducing guaranteed roaming sticky wilds and an explosive Swarm Mode capable of awarding up to 25,000x the initial stake.</p>
<h2>Player Favorite Reimagined</h2>
<p>With an audited 96.38% RTP and high volatility, the title is rolling out across all tier-one European and crypto-friendly casino sites.</p>',
      meta_title = 'Push Gaming Launches Wild Swarm 3 with 25,000x Win Potential',
      meta_description = 'Push Gaming introduces Wild Swarm 3 slot featuring upgraded Swarm Mode and expanded sticky wild reels.',
      status = 'published',
      sort_order = 33,
      updated_at = NOW()
    WHERE slug = 'push-gaming-releases-wild-swarm-3';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Push Gaming Releases "Wild Swarm 3" with Upgraded Hive Collection and 25,000x Max Win', 'push-gaming-releases-wild-swarm-3', 'https://images.unsplash.com/photo-1470115636492-6d2b56f9146d?w=1200&auto=format&fit=crop&q=80', '<p>Push Gaming has launched the third iteration of its acclaimed hive-building slot franchise: <strong>Wild Swarm 3</strong>.</p>
<h2>Upgraded Swarm Mechanics</h2>
<p>Featuring a 5x4 grid and 20 paylines, the sequel retains the popular bees-and-hive collection mechanic while introducing guaranteed roaming sticky wilds and an explosive Swarm Mode capable of awarding up to 25,000x the initial stake.</p>
<h2>Player Favorite Reimagined</h2>
<p>With an audited 96.38% RTP and high volatility, the title is rolling out across all tier-one European and crypto-friendly casino sites.</p>', 'Push Gaming Launches Wild Swarm 3 with 25,000x Win Potential', 'Push Gaming introduces Wild Swarm 3 slot featuring upgraded Swarm Mode and expanded sticky wild reels.', 'published', 33, '2026-09-05T11:30:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #34: WebAssembly Game Engines Cut Mobile Casino Loading Times by 70%, Improving Low-Bandwidth Play
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'webassembly-game-engines-cut-mobile-casino-loading-times') THEN
    UPDATE "News" SET
      title = 'WebAssembly Game Engines Cut Mobile Casino Loading Times by 70%, Improving Low-Bandwidth Play',
      featured_image = 'https://images.unsplash.com/photo-1556742049-0a67c5574f73?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The underlying technology powering online casino games is evolving rapidly as top development studios transition from standard JavaScript to WebAssembly (Wasm) rendering pipelines.</p>
<h2>Faster Load Times and Battery Efficiency</h2>
<p>Benchmark tests reveal that Wasm-compiled slot and table games load in under two seconds on 4G cellular connections, slashing data consumption by 60% and significantly extending smartphone battery life during extended sessions.</p>
<h2>High Frame Rate Visuals</h2>
<p>Complex 3D animations and particle effects now run at a silky-smooth 60 frames per second on mid-range and budget smartphones.</p>',
      meta_title = 'WebAssembly Architecture Slashes Mobile Casino Game Load Times',
      meta_description = 'iGaming developers transition to WebAssembly to provide instant slot loading and 60fps mobile gameplay.',
      status = 'published',
      sort_order = 34,
      updated_at = NOW()
    WHERE slug = 'webassembly-game-engines-cut-mobile-casino-loading-times';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'WebAssembly Game Engines Cut Mobile Casino Loading Times by 70%, Improving Low-Bandwidth Play', 'webassembly-game-engines-cut-mobile-casino-loading-times', 'https://images.unsplash.com/photo-1556742049-0a67c5574f73?w=1200&auto=format&fit=crop&q=80', '<p>The underlying technology powering online casino games is evolving rapidly as top development studios transition from standard JavaScript to WebAssembly (Wasm) rendering pipelines.</p>
<h2>Faster Load Times and Battery Efficiency</h2>
<p>Benchmark tests reveal that Wasm-compiled slot and table games load in under two seconds on 4G cellular connections, slashing data consumption by 60% and significantly extending smartphone battery life during extended sessions.</p>
<h2>High Frame Rate Visuals</h2>
<p>Complex 3D animations and particle effects now run at a silky-smooth 60 frames per second on mid-range and budget smartphones.</p>', 'WebAssembly Architecture Slashes Mobile Casino Game Load Times', 'iGaming developers transition to WebAssembly to provide instant slot loading and 60fps mobile gameplay.', 'published', 34, '2026-09-04T15:45:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #35: High-Roller Live Baccarat Demand Doubles Across European and Asian VIP Online Casinos
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'high-roller-live-baccarat-demand-doubles-online-casinos') THEN
    UPDATE "News" SET
      title = 'High-Roller Live Baccarat Demand Doubles Across European and Asian VIP Online Casinos',
      featured_image = 'https://images.unsplash.com/photo-1511193311914-0346f16efe90?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Demand for private Salon Privé live dealer baccarat has reached an all-time high, with VIP online turnover doubling year-over-year according to casino operator reports.</p>
<h2>Private One-on-One Salons</h2>
<p>Elite high-limit suites give individual VIP players complete control over the physical game tempo, including the ability to request shoe reshuffles, deal speeds, and interactive slow-motion card squeeze camera angles.</p>
<h2>Instant High-Value Crypto Settlement</h2>
<p>The ability to settle seven-figure bankrolls within minutes via direct USDT and Bitcoin transfers has further accelerated VIP player migration from brick-and-mortar resorts to online suites.</p>',
      meta_title = 'VIP Live Baccarat Demand Surges Across High-Stakes Online Casinos',
      meta_description = 'High-limit private salon live baccarat tables see record player volume with six-figure table limits and crypto payouts.',
      status = 'published',
      sort_order = 35,
      updated_at = NOW()
    WHERE slug = 'high-roller-live-baccarat-demand-doubles-online-casinos';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'High-Roller Live Baccarat Demand Doubles Across European and Asian VIP Online Casinos', 'high-roller-live-baccarat-demand-doubles-online-casinos', 'https://images.unsplash.com/photo-1511193311914-0346f16efe90?w=1200&auto=format&fit=crop&q=80', '<p>Demand for private Salon Privé live dealer baccarat has reached an all-time high, with VIP online turnover doubling year-over-year according to casino operator reports.</p>
<h2>Private One-on-One Salons</h2>
<p>Elite high-limit suites give individual VIP players complete control over the physical game tempo, including the ability to request shoe reshuffles, deal speeds, and interactive slow-motion card squeeze camera angles.</p>
<h2>Instant High-Value Crypto Settlement</h2>
<p>The ability to settle seven-figure bankrolls within minutes via direct USDT and Bitcoin transfers has further accelerated VIP player migration from brick-and-mortar resorts to online suites.</p>', 'VIP Live Baccarat Demand Surges Across High-Stakes Online Casinos', 'High-limit private salon live baccarat tables see record player volume with six-figure table limits and crypto payouts.', 'published', 35, '2026-09-03T08:50:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #36: French Parliament Debates Legalization of Online Casinos to Capture €1.5B in Offshore Revenue
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'french-parliament-debates-online-casino-legalization') THEN
    UPDATE "News" SET
      title = 'French Parliament Debates Legalization of Online Casinos to Capture €1.5B in Offshore Revenue',
      featured_image = 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A bipartisan legislative proposal to legalize online casino gaming in France is gaining significant traction within the National Assembly.</p>
<h2>Halting Unregulated Flight</h2>
<p>Proponents highlight that more than 3 million French residents currently play on unlicensed offshore websites each year, resulting in over €1.5 billion in lost tax revenue and zero consumer safety protections.</p>
<h2>Land-Based Casino Compromise</h2>
<p>The draft legislation proposes special partnership frameworks with historic brick-and-mortar French thermal and coastal casino resorts to protect domestic hospitality employment.</p>',
      meta_title = 'France Debates Historic Online Casino Legalization Bill',
      meta_description = 'French lawmakers introduce legislation to regulate online casino games and redirect offshore gambling into state coffers.',
      status = 'published',
      sort_order = 36,
      updated_at = NOW()
    WHERE slug = 'french-parliament-debates-online-casino-legalization';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'French Parliament Debates Legalization of Online Casinos to Capture €1.5B in Offshore Revenue', 'french-parliament-debates-online-casino-legalization', 'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=1200&auto=format&fit=crop&q=80', '<p>A bipartisan legislative proposal to legalize online casino gaming in France is gaining significant traction within the National Assembly.</p>
<h2>Halting Unregulated Flight</h2>
<p>Proponents highlight that more than 3 million French residents currently play on unlicensed offshore websites each year, resulting in over €1.5 billion in lost tax revenue and zero consumer safety protections.</p>
<h2>Land-Based Casino Compromise</h2>
<p>The draft legislation proposes special partnership frameworks with historic brick-and-mortar French thermal and coastal casino resorts to protect domestic hospitality employment.</p>', 'France Debates Historic Online Casino Legalization Bill', 'French lawmakers introduce legislation to regulate online casino games and redirect offshore gambling into state coffers.', 'published', 36, '2026-09-02T13:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #37: Big Time Gaming Celebrates 10 Years of "Megaways" Mechanic That Reshaped the Global Slot Industry
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'big-time-gaming-celebrates-10-years-of-megaways') THEN
    UPDATE "News" SET
      title = 'Big Time Gaming Celebrates 10 Years of "Megaways" Mechanic That Reshaped the Global Slot Industry',
      featured_image = 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Big Time Gaming (BTG), now part of Evolution, is celebrating the tenth anniversary of its industry-defining Megaways reel mechanic.</p>
<h2>From Innovation to Industry Standard</h2>
<p>First introduced in games like Dragon Born and solidified with the historic launch of Bonanza Megaways, the dynamic system of variable reel sizes generating up to 117,649 ways to win transformed slot development forever.</p>
<h2>Universal Sub-Licensing</h2>
<p>Nearly every major slot developer—including NetEnt, Blueprint Gaming, Red Tiger, and Pragmatic Play—has sub-licensed the mechanic to produce franchise spin-offs.</p>',
      meta_title = 'Big Time Gaming Marks Decade of Revolutionary Megaways Mechanic',
      meta_description = 'Megaways marks 10 years of redefining online slot reels, with over 500 titles powered by the dynamic payline engine.',
      status = 'published',
      sort_order = 37,
      updated_at = NOW()
    WHERE slug = 'big-time-gaming-celebrates-10-years-of-megaways';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Big Time Gaming Celebrates 10 Years of "Megaways" Mechanic That Reshaped the Global Slot Industry', 'big-time-gaming-celebrates-10-years-of-megaways', 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80', '<p>Big Time Gaming (BTG), now part of Evolution, is celebrating the tenth anniversary of its industry-defining Megaways reel mechanic.</p>
<h2>From Innovation to Industry Standard</h2>
<p>First introduced in games like Dragon Born and solidified with the historic launch of Bonanza Megaways, the dynamic system of variable reel sizes generating up to 117,649 ways to win transformed slot development forever.</p>
<h2>Universal Sub-Licensing</h2>
<p>Nearly every major slot developer—including NetEnt, Blueprint Gaming, Red Tiger, and Pragmatic Play—has sub-licensed the mechanic to produce franchise spin-offs.</p>', 'Big Time Gaming Marks Decade of Revolutionary Megaways Mechanic', 'Megaways marks 10 years of redefining online slot reels, with over 500 titles powered by the dynamic payline engine.', 'published', 37, '2026-09-01T10:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #38: GamCare Launches Instant Messaging Crisis Service Integrated Directly into Casino Cashier Windows
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'gamcare-launches-instant-messaging-crisis-service-cashiers') THEN
    UPDATE "News" SET
      title = 'GamCare Launches Instant Messaging Crisis Service Integrated Directly into Casino Cashier Windows',
      featured_image = 'https://images.unsplash.com/photo-1450133064473-71024230f91b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>In a major collaborative step toward safer remote gaming, national support charity GamCare has launched a direct-connect chat service embedded within online casino cashier screens.</p>
<h2>Direct Help When Temptation Hits</h2>
<p>Players displaying repeated deposit attempts or chasing behaviors can access a confidential, one-click conversation with an accredited support advisor without leaving their browser.</p>
<h2>Positive Early Results</h2>
<p>Early data shows that over 60% of players who engaged with the embedded support tool chose to activate a temporary deposit break or self-exclusion period.</p>',
      meta_title = 'GamCare Embeds Live Safer Gambling Support into Casino Cashiers',
      meta_description = 'GamCare introduces instant live support tools inside casino cashiers to assist players at risk of problem gambling.',
      status = 'published',
      sort_order = 38,
      updated_at = NOW()
    WHERE slug = 'gamcare-launches-instant-messaging-crisis-service-cashiers';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'GamCare Launches Instant Messaging Crisis Service Integrated Directly into Casino Cashier Windows', 'gamcare-launches-instant-messaging-crisis-service-cashiers', 'https://images.unsplash.com/photo-1450133064473-71024230f91b?w=1200&auto=format&fit=crop&q=80', '<p>In a major collaborative step toward safer remote gaming, national support charity GamCare has launched a direct-connect chat service embedded within online casino cashier screens.</p>
<h2>Direct Help When Temptation Hits</h2>
<p>Players displaying repeated deposit attempts or chasing behaviors can access a confidential, one-click conversation with an accredited support advisor without leaving their browser.</p>
<h2>Positive Early Results</h2>
<p>Early data shows that over 60% of players who engaged with the embedded support tool chose to activate a temporary deposit break or self-exclusion period.</p>', 'GamCare Embeds Live Safer Gambling Support into Casino Cashiers', 'GamCare introduces instant live support tools inside casino cashiers to assist players at risk of problem gambling.', 'published', 38, '2026-08-31T14:30:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #39: Multiplayer Crash Games Overtake Classic Table Games in Daily Active Users Among Under-30 Players
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'multiplayer-crash-games-overtake-classic-table-games') THEN
    UPDATE "News" SET
      title = 'Multiplayer Crash Games Overtake Classic Table Games in Daily Active Users Among Under-30 Players',
      featured_image = 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A comprehensive demographic study of online casino engagement has revealed that social crash games have surpassed traditional blackjack and roulette in daily active player counts for bettors aged 18 to 29.</p>
<h2>Community Psychology</h2>
<p>Unlike solitary slot spins, crash games feature a shared multiplayer multiplier where hundreds of players watch the same rocket climb, sharing live chat reactions and viewing each other’s cashout timings in real time.</p>
<h2>Simplicity and Control</h2>
<p>Players appreciate the clear, transparent mechanic: cash out before the rocket crashes to multiply your bet, or lose your stake if you wait too long.</p>',
      meta_title = 'Social Crash Games Surpass Classic Tables in Young Player Demographics',
      meta_description = 'Aviator and modern crash games dominate online casino lobbies as social multiplayer features draw record crowds.',
      status = 'published',
      sort_order = 39,
      updated_at = NOW()
    WHERE slug = 'multiplayer-crash-games-overtake-classic-table-games';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Multiplayer Crash Games Overtake Classic Table Games in Daily Active Users Among Under-30 Players', 'multiplayer-crash-games-overtake-classic-table-games', 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=1200&auto=format&fit=crop&q=80', '<p>A comprehensive demographic study of online casino engagement has revealed that social crash games have surpassed traditional blackjack and roulette in daily active player counts for bettors aged 18 to 29.</p>
<h2>Community Psychology</h2>
<p>Unlike solitary slot spins, crash games feature a shared multiplayer multiplier where hundreds of players watch the same rocket climb, sharing live chat reactions and viewing each other’s cashout timings in real time.</p>
<h2>Simplicity and Control</h2>
<p>Players appreciate the clear, transparent mechanic: cash out before the rocket crashes to multiply your bet, or lose your stake if you wait too long.</p>', 'Social Crash Games Surpass Classic Tables in Young Player Demographics', 'Aviator and modern crash games dominate online casino lobbies as social multiplayer features draw record crowds.', 'published', 39, '2026-08-30T09:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #40: Relax Gaming Celebrates "Money Train" Franchise Milestone with Over 1 Billion Lifetime Spins
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'relax-gaming-celebrates-money-train-milestone-billion-spins') THEN
    UPDATE "News" SET
      title = 'Relax Gaming Celebrates "Money Train" Franchise Milestone with Over 1 Billion Lifetime Spins',
      featured_image = 'https://images.unsplash.com/photo-1596838132731-3301c3fd4317?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Relax Gaming has announced that its acclaimed <strong>Money Train</strong> series across all four editions has officially surpassed one billion lifetime game rounds.</p>
<h2>The Masterclass of Hold-and-Win</h2>
<p>First introduced with the original Money Train and elevated to astronomical heights with the 500,000x win potential of Money Train 4, the franchise revolutionized feature-buy mechanics with modifiers like the Collector, Sniper, and Necromancer.</p>
<h2>Enduring Legacy</h2>
<p>Relax Gaming executives celebrated the achievement by confirming plans for new high-octane sequels continuing the iconic steampunk western aesthetic.</p>',
      meta_title = 'Relax Gaming Money Train Franchise Surpasses 1 Billion Spins',
      meta_description = 'Money Train series marks one billion lifetime rounds as Relax Gaming celebrates iconic hold-and-win legacy.',
      status = 'published',
      sort_order = 40,
      updated_at = NOW()
    WHERE slug = 'relax-gaming-celebrates-money-train-milestone-billion-spins';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Relax Gaming Celebrates "Money Train" Franchise Milestone with Over 1 Billion Lifetime Spins', 'relax-gaming-celebrates-money-train-milestone-billion-spins', 'https://images.unsplash.com/photo-1596838132731-3301c3fd4317?w=1200&auto=format&fit=crop&q=80', '<p>Relax Gaming has announced that its acclaimed <strong>Money Train</strong> series across all four editions has officially surpassed one billion lifetime game rounds.</p>
<h2>The Masterclass of Hold-and-Win</h2>
<p>First introduced with the original Money Train and elevated to astronomical heights with the 500,000x win potential of Money Train 4, the franchise revolutionized feature-buy mechanics with modifiers like the Collector, Sniper, and Necromancer.</p>
<h2>Enduring Legacy</h2>
<p>Relax Gaming executives celebrated the achievement by confirming plans for new high-octane sequels continuing the iconic steampunk western aesthetic.</p>', 'Relax Gaming Money Train Franchise Surpasses 1 Billion Spins', 'Money Train series marks one billion lifetime rounds as Relax Gaming celebrates iconic hold-and-win legacy.', 'published', 40, '2026-08-29T16:40:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #41: Same-Game Parlay (Bet Builder) Features Now Generate 55% of All European Soccer Betting Turnover
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'same-game-parlay-features-generate-55-percent-soccer-turnover') THEN
    UPDATE "News" SET
      title = 'Same-Game Parlay (Bet Builder) Features Now Generate 55% of All European Soccer Betting Turnover',
      featured_image = 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Same-Game Parlays—commonly marketed as "Bet Builders"—have grown into the most lucrative product in modern sports betting, generating over 55% of all soccer wagering handle across top operators.</p>
<h2>Personalized Match Narratives</h2>
<p>Rather than placing isolated single wagers, bettors craft narrative slips combining match outcomes, goalscorers, cards, and fouls to unlock astronomical combined payout odds.</p>
<h2>Algorithmic Correlation Engines</h2>
<p>Advanced algorithmic pricing engines calculate true statistical correlations between in-game events in milliseconds, ensuring competitive odds while protecting operator margins.</p>',
      meta_title = 'Bet Builder Parlays Capture 55% of European Soccer Wagering Volume',
      meta_description = 'Same-game parlay bet builders dominate modern sports betting as fans create custom multi-leg match slips.',
      status = 'published',
      sort_order = 41,
      updated_at = NOW()
    WHERE slug = 'same-game-parlay-features-generate-55-percent-soccer-turnover';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Same-Game Parlay (Bet Builder) Features Now Generate 55% of All European Soccer Betting Turnover', 'same-game-parlay-features-generate-55-percent-soccer-turnover', 'https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=1200&auto=format&fit=crop&q=80', '<p>Same-Game Parlays—commonly marketed as "Bet Builders"—have grown into the most lucrative product in modern sports betting, generating over 55% of all soccer wagering handle across top operators.</p>
<h2>Personalized Match Narratives</h2>
<p>Rather than placing isolated single wagers, bettors craft narrative slips combining match outcomes, goalscorers, cards, and fouls to unlock astronomical combined payout odds.</p>
<h2>Algorithmic Correlation Engines</h2>
<p>Advanced algorithmic pricing engines calculate true statistical correlations between in-game events in milliseconds, ensuring competitive odds while protecting operator margins.</p>', 'Bet Builder Parlays Capture 55% of European Soccer Wagering Volume', 'Same-game parlay bet builders dominate modern sports betting as fans create custom multi-leg match slips.', 'published', 41, '2026-08-28T11:10:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #42: Provably Fair 2.0: Next-Gen Zero-Knowledge Proofs Bring Complete Privacy to Verified Casino Odds
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'provably-fair-2-next-gen-zero-knowledge-proofs-casinos') THEN
    UPDATE "News" SET
      title = 'Provably Fair 2.0: Next-Gen Zero-Knowledge Proofs Bring Complete Privacy to Verified Casino Odds',
      featured_image = 'https://images.unsplash.com/photo-1622979135240-caa6648190b6?w=1200&auto=format&fit=crop&q=80',
      content = '<p>A breakthrough in cryptographic verification is rolling out across cutting-edge Web3 online casinos under the banner of "Provably Fair 2.0".</p>
<h2>Zero-Knowledge Mathematical Guarantees</h2>
<p>Utilizing zk-SNARK protocols, players can receive mathematical proof that the game server’s random seed was determined prior to the bet and remained unaltered during play—all without exposing their private balances or betting histories to public observers.</p>
<h2>Bridging Privacy and Compliance</h2>
<p>Cryptographers note that zero-knowledge architectures solve the historic friction between public blockchain transparency and personal financial privacy.</p>',
      meta_title = 'Zero-Knowledge Proofs Power Provably Fair 2.0 in Crypto Casinos',
      meta_description = 'Next-gen zero-knowledge cryptography enables private, verifiable mathematical fairness in online casino games.',
      status = 'published',
      sort_order = 42,
      updated_at = NOW()
    WHERE slug = 'provably-fair-2-next-gen-zero-knowledge-proofs-casinos';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Provably Fair 2.0: Next-Gen Zero-Knowledge Proofs Bring Complete Privacy to Verified Casino Odds', 'provably-fair-2-next-gen-zero-knowledge-proofs-casinos', 'https://images.unsplash.com/photo-1622979135240-caa6648190b6?w=1200&auto=format&fit=crop&q=80', '<p>A breakthrough in cryptographic verification is rolling out across cutting-edge Web3 online casinos under the banner of "Provably Fair 2.0".</p>
<h2>Zero-Knowledge Mathematical Guarantees</h2>
<p>Utilizing zk-SNARK protocols, players can receive mathematical proof that the game server’s random seed was determined prior to the bet and remained unaltered during play—all without exposing their private balances or betting histories to public observers.</p>
<h2>Bridging Privacy and Compliance</h2>
<p>Cryptographers note that zero-knowledge architectures solve the historic friction between public blockchain transparency and personal financial privacy.</p>', 'Zero-Knowledge Proofs Power Provably Fair 2.0 in Crypto Casinos', 'Next-gen zero-knowledge cryptography enables private, verifiable mathematical fairness in online casino games.', 'published', 42, '2026-08-27T14:50:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #43: European Neobanks Expand Granular Gambling Blocking Features with 48-Hour Deactivation Cool-Offs
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'neobanks-expand-gambling-blocking-features-cool-off') THEN
    UPDATE "News" SET
      title = 'European Neobanks Expand Granular Gambling Blocking Features with 48-Hour Deactivation Cool-Offs',
      featured_image = 'https://images.unsplash.com/photo-1563986768609-322da13575f3?w=1200&auto=format&fit=crop&q=80',
      content = '<p>European digital neobanks have upgraded their in-app financial health controls, introducing mandatory 48-hour delays before a user can disable a gambling merchant block.</p>
<h2>Overcoming Impulsive Deactivation</h2>
<p>Previous instant toggle buttons allowed distressed players to quickly disable protections during impulsive moments. The mandatory 48-hour cool-off provides crucial friction, allowing emotions to settle.</p>
<h2>Cross-Bank Standard</h2>
<p>Banking regulators across multiple EU member states have praised the measure, encouraging high-street banks to adopt identical friction safeguards.</p>',
      meta_title = 'Neobanks Add 48-Hour Cooling Off Delay to Gambling Block Controls',
      meta_description = 'Digital banks introduce 48-hour delay for unblocking gambling transactions to curb impulsive spending.',
      status = 'published',
      sort_order = 43,
      updated_at = NOW()
    WHERE slug = 'neobanks-expand-gambling-blocking-features-cool-off';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'European Neobanks Expand Granular Gambling Blocking Features with 48-Hour Deactivation Cool-Offs', 'neobanks-expand-gambling-blocking-features-cool-off', 'https://images.unsplash.com/photo-1563986768609-322da13575f3?w=1200&auto=format&fit=crop&q=80', '<p>European digital neobanks have upgraded their in-app financial health controls, introducing mandatory 48-hour delays before a user can disable a gambling merchant block.</p>
<h2>Overcoming Impulsive Deactivation</h2>
<p>Previous instant toggle buttons allowed distressed players to quickly disable protections during impulsive moments. The mandatory 48-hour cool-off provides crucial friction, allowing emotions to settle.</p>
<h2>Cross-Bank Standard</h2>
<p>Banking regulators across multiple EU member states have praised the measure, encouraging high-street banks to adopt identical friction safeguards.</p>', 'Neobanks Add 48-Hour Cooling Off Delay to Gambling Block Controls', 'Digital banks introduce 48-hour delay for unblocking gambling transactions to curb impulsive spending.', 'published', 43, '2026-08-26T10:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #44: Multiplier Roulette Games Command 60% of All Live European Roulette Turnover
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'multiplier-roulette-games-command-60-percent-live-turnover') THEN
    UPDATE "News" SET
      title = 'Multiplier Roulette Games Command 60% of All Live European Roulette Turnover',
      featured_image = 'https://images.unsplash.com/photo-1511193311914-0346f16efe90?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Traditional European single-zero roulette is increasingly taking a backseat to electrifying multiplier formats in online live dealer lobbies.</p>
<h2>Electrifying Straight-Up Action</h2>
<p>By slightly reducing standard straight-up payouts from 35:1 to 29:1, multiplier roulette games fund random lightning strikes that supercharge selected lucky numbers with payouts ranging from 50x up to 1,000x.</p>
<h2>Universal Player Appeal</h2>
<p>Operators report that the anticipation of hitting a massive multiplier on a classic roulette wheel attracts both traditional card and table fans and slot enthusiasts.</p>',
      meta_title = 'Multiplier Roulette Dominates Live Dealer Table Game Traffic',
      meta_description = 'Random 1000x multiplier roulette games capture 60% of live casino wheel betting volume globally.',
      status = 'published',
      sort_order = 44,
      updated_at = NOW()
    WHERE slug = 'multiplier-roulette-games-command-60-percent-live-turnover';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Multiplier Roulette Games Command 60% of All Live European Roulette Turnover', 'multiplier-roulette-games-command-60-percent-live-turnover', 'https://images.unsplash.com/photo-1511193311914-0346f16efe90?w=1200&auto=format&fit=crop&q=80', '<p>Traditional European single-zero roulette is increasingly taking a backseat to electrifying multiplier formats in online live dealer lobbies.</p>
<h2>Electrifying Straight-Up Action</h2>
<p>By slightly reducing standard straight-up payouts from 35:1 to 29:1, multiplier roulette games fund random lightning strikes that supercharge selected lucky numbers with payouts ranging from 50x up to 1,000x.</p>
<h2>Universal Player Appeal</h2>
<p>Operators report that the anticipation of hitting a massive multiplier on a classic roulette wheel attracts both traditional card and table fans and slot enthusiasts.</p>', 'Multiplier Roulette Dominates Live Dealer Table Game Traffic', 'Random 1000x multiplier roulette games capture 60% of live casino wheel betting volume globally.', 'published', 44, '2026-08-25T15:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #45: US Online Casino Gross Revenue Surpasses $7 Billion Across New Jersey, Pennsylvania, and Michigan
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'us-online-casino-gross-revenue-surpasses-7-billion') THEN
    UPDATE "News" SET
      title = 'US Online Casino Gross Revenue Surpasses $7 Billion Across New Jersey, Pennsylvania, and Michigan',
      featured_image = 'https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?w=1200&auto=format&fit=crop&q=80',
      content = '<p>State gaming boards in New Jersey, Pennsylvania, and Michigan have confirmed that combined annual iGaming gross gaming revenue has eclipsed $7 billion.</p>
<h2>Outpacing Sports Betting Margins</h2>
<p>While sports betting garners extensive media coverage, state tax receipts confirm that online casino games generate more than triple the tax revenues of sports betting per user.</p>
<h2>Catalyst for New Legislation</h2>
<p>State legislators in New York, Illinois, and Maryland are actively preparing iGaming legalization proposals to capture similar tax dividends for public infrastructure projects.</p>',
      meta_title = 'US Online Casino Revenue Hits Historic $7B Milestone Across 3 States',
      meta_description = 'New Jersey, Pennsylvania, and Michigan set record $7B iGaming gross revenue, outpacing sports betting tax receipts.',
      status = 'published',
      sort_order = 45,
      updated_at = NOW()
    WHERE slug = 'us-online-casino-gross-revenue-surpasses-7-billion';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'US Online Casino Gross Revenue Surpasses $7 Billion Across New Jersey, Pennsylvania, and Michigan', 'us-online-casino-gross-revenue-surpasses-7-billion', 'https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?w=1200&auto=format&fit=crop&q=80', '<p>State gaming boards in New Jersey, Pennsylvania, and Michigan have confirmed that combined annual iGaming gross gaming revenue has eclipsed $7 billion.</p>
<h2>Outpacing Sports Betting Margins</h2>
<p>While sports betting garners extensive media coverage, state tax receipts confirm that online casino games generate more than triple the tax revenues of sports betting per user.</p>
<h2>Catalyst for New Legislation</h2>
<p>State legislators in New York, Illinois, and Maryland are actively preparing iGaming legalization proposals to capture similar tax dividends for public infrastructure projects.</p>', 'US Online Casino Revenue Hits Historic $7B Milestone Across 3 States', 'New Jersey, Pennsylvania, and Michigan set record $7B iGaming gross revenue, outpacing sports betting tax receipts.', 'published', 45, '2026-08-24T09:30:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #46: 85% of Global Online Casino Spins Now Executed in One-Handed Smartphone Portrait Mode
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = '85-percent-casino-spins-executed-in-smartphone-portrait-mode') THEN
    UPDATE "News" SET
      title = '85% of Global Online Casino Spins Now Executed in One-Handed Smartphone Portrait Mode',
      featured_image = 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Mobile gaming ergonomics have officially fundamentally rewritten online casino interface design standards over the past three years.</p>
<h2>Thumb-First Interface Engineering</h2>
<p>According to telemetric user experience audits, 85% of mobile slot players prefer playing in vertical portrait mode while commuting or relaxing at home, avoiding the awkwardness of turning phones sideways.</p>
<h2>Dynamic Mobile Game UI</h2>
<p>Modern slots now feature bottom-anchored spin buttons, expandable paytables, and thumb-accessible bet adjustment sliders tailored specifically for one-handed operation.</p>',
      meta_title = 'One-Handed Portrait Gaming Captures 85% of Mobile Slot Market',
      meta_description = 'Casino game providers pivot entirely to portrait-first design as mobile players embrace one-handed convenience.',
      status = 'published',
      sort_order = 46,
      updated_at = NOW()
    WHERE slug = '85-percent-casino-spins-executed-in-smartphone-portrait-mode';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, '85% of Global Online Casino Spins Now Executed in One-Handed Smartphone Portrait Mode', '85-percent-casino-spins-executed-in-smartphone-portrait-mode', 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=1200&auto=format&fit=crop&q=80', '<p>Mobile gaming ergonomics have officially fundamentally rewritten online casino interface design standards over the past three years.</p>
<h2>Thumb-First Interface Engineering</h2>
<p>According to telemetric user experience audits, 85% of mobile slot players prefer playing in vertical portrait mode while commuting or relaxing at home, avoiding the awkwardness of turning phones sideways.</p>
<h2>Dynamic Mobile Game UI</h2>
<p>Modern slots now feature bottom-anchored spin buttons, expandable paytables, and thumb-accessible bet adjustment sliders tailored specifically for one-handed operation.</p>', 'One-Handed Portrait Gaming Captures 85% of Mobile Slot Market', 'Casino game providers pivot entirely to portrait-first design as mobile players embrace one-handed convenience.', 'published', 46, '2026-08-23T16:10:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #47: Gibraltar Gambling Division Issues Updated Remote Technical Standards for Cloud Infrastructure
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'gibraltar-gambling-division-updated-remote-technical-standards') THEN
    UPDATE "News" SET
      title = 'Gibraltar Gambling Division Issues Updated Remote Technical Standards for Cloud Infrastructure',
      featured_image = 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The Gibraltar Gambling Division has formally published its 2026 Remote Technical Standards, providing comprehensive guidelines for cloud hosting.</p>
<h2>Secure Multi-Cloud Architectures</h2>
<p>Operators and software providers can now utilize hybrid architectures across Amazon Web Services (AWS), Microsoft Azure, and Google Cloud, provided primary transactional data and cryptographic keys adhere to strict European data residency mandates.</p>
<h2>Robust Disaster Recovery</h2>
<p>The revised standards enforce automated geo-redundant failovers to ensure uninterrupted player access and financial auditing integrity during server outages.</p>',
      meta_title = 'Gibraltar Modernizes Remote Casino Technical Standards for Cloud',
      meta_description = 'Gibraltar Gambling Division updates technical standards, authorizing certified multi-cloud infrastructure for licensees.',
      status = 'published',
      sort_order = 47,
      updated_at = NOW()
    WHERE slug = 'gibraltar-gambling-division-updated-remote-technical-standards';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Gibraltar Gambling Division Issues Updated Remote Technical Standards for Cloud Infrastructure', 'gibraltar-gambling-division-updated-remote-technical-standards', 'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=1200&auto=format&fit=crop&q=80', '<p>The Gibraltar Gambling Division has formally published its 2026 Remote Technical Standards, providing comprehensive guidelines for cloud hosting.</p>
<h2>Secure Multi-Cloud Architectures</h2>
<p>Operators and software providers can now utilize hybrid architectures across Amazon Web Services (AWS), Microsoft Azure, and Google Cloud, provided primary transactional data and cryptographic keys adhere to strict European data residency mandates.</p>
<h2>Robust Disaster Recovery</h2>
<p>The revised standards enforce automated geo-redundant failovers to ensure uninterrupted player access and financial auditing integrity during server outages.</p>', 'Gibraltar Modernizes Remote Casino Technical Standards for Cloud', 'Gibraltar Gambling Division updates technical standards, authorizing certified multi-cloud infrastructure for licensees.', 'published', 47, '2026-08-22T11:20:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #48: Crazy Time Reaches New Concurrent Player Record with 45,000 Simultaneous Bettors on Single Round
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'crazy-time-sets-record-45000-concurrent-players') THEN
    UPDATE "News" SET
      title = 'Crazy Time Reaches New Concurrent Player Record with 45,000 Simultaneous Bettors on Single Round',
      featured_image = 'https://images.unsplash.com/photo-1579373903781-fd5c0c30c4cd?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Evolution’s world-renowned live game show, <strong>Crazy Time</strong>, has broken its own all-time record for simultaneous players connected to a single studio deal.</p>
<h2>Electric Virtual Stadium</h2>
<p>Over 45,000 active players from more than 150 countries participated concurrently during a weekend evening session that saw the red flapper trigger an epic 5,000x multiplier payout.</p>
<h2>Technological Resilience</h2>
<p>Engineers highlighted that the broadcast architecture handled millions of concurrent WebSocket messages and bets seamlessly without latency spikes.</p>',
      meta_title = 'Crazy Time Hits Record 45,000 Concurrent Live Players | Casino News',
      meta_description = 'Evolution live game show Crazy Time sets global record with 45,000 simultaneous players on a 5,000x bonus round.',
      status = 'published',
      sort_order = 48,
      updated_at = NOW()
    WHERE slug = 'crazy-time-sets-record-45000-concurrent-players';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Crazy Time Reaches New Concurrent Player Record with 45,000 Simultaneous Bettors on Single Round', 'crazy-time-sets-record-45000-concurrent-players', 'https://images.unsplash.com/photo-1579373903781-fd5c0c30c4cd?w=1200&auto=format&fit=crop&q=80', '<p>Evolution’s world-renowned live game show, <strong>Crazy Time</strong>, has broken its own all-time record for simultaneous players connected to a single studio deal.</p>
<h2>Electric Virtual Stadium</h2>
<p>Over 45,000 active players from more than 150 countries participated concurrently during a weekend evening session that saw the red flapper trigger an epic 5,000x multiplier payout.</p>
<h2>Technological Resilience</h2>
<p>Engineers highlighted that the broadcast architecture handled millions of concurrent WebSocket messages and bets seamlessly without latency spikes.</p>', 'Crazy Time Hits Record 45,000 Concurrent Live Players | Casino News', 'Evolution live game show Crazy Time sets global record with 45,000 simultaneous players on a 5,000x bonus round.', 'published', 48, '2026-08-21T17:45:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #49: Nordic BankID Model Inspires Pan-European Digital Identity Verification for Instant Casino Access
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'nordic-bankid-model-inspires-pan-european-digital-id') THEN
    UPDATE "News" SET
      title = 'Nordic BankID Model Inspires Pan-European Digital Identity Verification for Instant Casino Access',
      featured_image = 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>The revolutionary "Pay N Play" concept—where bank authentication simultaneously completes player registration, KYC verification, and initial deposits—is expanding across mainland Europe.</p>
<h2>Zero Registration Friction</h2>
<p>Instead of typing manual addresses, birthdates, and uploading utility bills, players authenticate via their verified national electronic identity (eID), logging in and starting play in seconds.</p>
<h2>Instant Payout Reversals</h2>
<p>When players finish their session, funds transfer back to the verified checking account instantly with zero manual approvals required.</p>',
      meta_title = 'Pay N Play Digital Identity Model Expands Across European Casinos',
      meta_description = 'Frictionless Pay N Play casino onboarding spreads across Europe, offering instant deposits and verified withdrawals.',
      status = 'published',
      sort_order = 49,
      updated_at = NOW()
    WHERE slug = 'nordic-bankid-model-inspires-pan-european-digital-id';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Nordic BankID Model Inspires Pan-European Digital Identity Verification for Instant Casino Access', 'nordic-bankid-model-inspires-pan-european-digital-id', 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=1200&auto=format&fit=crop&q=80', '<p>The revolutionary "Pay N Play" concept—where bank authentication simultaneously completes player registration, KYC verification, and initial deposits—is expanding across mainland Europe.</p>
<h2>Zero Registration Friction</h2>
<p>Instead of typing manual addresses, birthdates, and uploading utility bills, players authenticate via their verified national electronic identity (eID), logging in and starting play in seconds.</p>
<h2>Instant Payout Reversals</h2>
<p>When players finish their session, funds transfer back to the verified checking account instantly with zero manual approvals required.</p>', 'Pay N Play Digital Identity Model Expands Across European Casinos', 'Frictionless Pay N Play casino onboarding spreads across Europe, offering instant deposits and verified withdrawals.', 'published', 49, '2026-08-20T10:15:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  -- News #50: Casino Reviews Book Announces Final Nominees for Annual Global iGaming Awards 2026
  IF EXISTS (SELECT 1 FROM "News" WHERE slug = 'casino-reviews-book-global-igaming-awards-2026-nominees') THEN
    UPDATE "News" SET
      title = 'Casino Reviews Book Announces Final Nominees for Annual Global iGaming Awards 2026',
      featured_image = 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80',
      content = '<p>Following months of mystery-shopper audits, real-money withdrawal speed tests, and licensing verifications, <strong>Casino Reviews Book</strong> has officially released the nominee shortlist for the Global iGaming Awards 2026.</p>
<h2>Player-Centric Evaluation Criteria</h2>
<p>Nominees were determined strictly by verified operational metrics rather than commercial sponsorships:</p>
<ul>
  <li><strong>Fastest Verified Withdrawal Operator:</strong> Nominees with average cashouts under 30 minutes.</li>
  <li><strong>Most Transparent Bonus Terms:</strong> Casinos with low wagering requirements and zero predatory withdrawal caps.</li>
  <li><strong>Top Live Casino Experience:</strong> Seamless mobile streaming and dealer excellence.</li>
  <li><strong>Best Crypto Casino Innovation:</strong> Outstanding Provably Fair integration and multi-coin support.</li>
</ul>
<h2>Community Voting Opens</h2>
<p>Players and industry professionals are invited to cast their verified community votes ahead of the annual winners gala.</p>',
      meta_title = 'Casino Reviews Book Unveils 2026 Global iGaming Award Nominees',
      meta_description = 'Casino Reviews Book announces audited nominees for annual iGaming awards, celebrating the safest and fastest operators.',
      status = 'published',
      sort_order = 50,
      updated_at = NOW()
    WHERE slug = 'casino-reviews-book-global-igaming-awards-2026-nominees';
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "News" (
      id, author_id, title, slug, featured_image, content, meta_title, meta_description, status, sort_order, published_at, created_at, updated_at
    ) VALUES (
      gen_random_uuid(), v_author_id, 'Casino Reviews Book Announces Final Nominees for Annual Global iGaming Awards 2026', 'casino-reviews-book-global-igaming-awards-2026-nominees', 'https://images.unsplash.com/photo-1518609878373-06d740f60d8b?w=1200&auto=format&fit=crop&q=80', '<p>Following months of mystery-shopper audits, real-money withdrawal speed tests, and licensing verifications, <strong>Casino Reviews Book</strong> has officially released the nominee shortlist for the Global iGaming Awards 2026.</p>
<h2>Player-Centric Evaluation Criteria</h2>
<p>Nominees were determined strictly by verified operational metrics rather than commercial sponsorships:</p>
<ul>
  <li><strong>Fastest Verified Withdrawal Operator:</strong> Nominees with average cashouts under 30 minutes.</li>
  <li><strong>Most Transparent Bonus Terms:</strong> Casinos with low wagering requirements and zero predatory withdrawal caps.</li>
  <li><strong>Top Live Casino Experience:</strong> Seamless mobile streaming and dealer excellence.</li>
  <li><strong>Best Crypto Casino Innovation:</strong> Outstanding Provably Fair integration and multi-coin support.</li>
</ul>
<h2>Community Voting Opens</h2>
<p>Players and industry professionals are invited to cast their verified community votes ahead of the annual winners gala.</p>', 'Casino Reviews Book Unveils 2026 Global iGaming Award Nominees', 'Casino Reviews Book announces audited nominees for annual iGaming awards, celebrating the safest and fastest operators.', 'published', 50, '2026-08-19T14:00:00.000Z'::timestamptz, NOW(), NOW()
    );
    inserted_count := inserted_count + 1;
  END IF;

  RAISE NOTICE 'News seeding completed: % inserted, % updated.', inserted_count, updated_count;
END $$;
