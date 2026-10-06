-- ==============================================================
-- Category FAQs Database Seeder for Server / Production
-- Generated: 2026-10-06T10:11:16.971Z
-- Idempotent: Skips or updates existing question + category
-- Run on Server:
--   psql -U postgres -d casinolab -f prisma/seed-category-faqs.sql
-- ==============================================================

DO $$
DECLARE
  inserted_count INTEGER := 0;
  updated_count INTEGER := 0;
BEGIN

  -- [home] What is Casino Reviews Book?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('What is Casino Reviews Book?')) THEN
    UPDATE "Faq"
    SET answer = 'Casino Reviews Book is an independent iGaming research and review portal. We conduct hands-on testing of online casinos, audit payout speeds with real deposits, inspect licensing integrity, and dissect promotional fine print to help players gamble safely.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('What is Casino Reviews Book?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is Casino Reviews Book?', 'Casino Reviews Book is an independent iGaming research and review portal. We conduct hands-on testing of online casinos, audit payout speeds with real deposits, inspect licensing integrity, and dissect promotional fine print to help players gamble safely.', 'home', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [home] How do you review and audit online casinos?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('How do you review and audit online casinos?')) THEN
    UPDATE "Faq"
    SET answer = 'Every brand undergoes our 6-step testing pipeline: licensing and jurisdiction verification, real-money deposit testing, bonus rollover audits, mobile UI responsiveness benchmarking, withdrawal processing verification, and 24/7 customer support responsiveness tests.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('How do you review and audit online casinos?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How do you review and audit online casinos?', 'Every brand undergoes our 6-step testing pipeline: licensing and jurisdiction verification, real-money deposit testing, bonus rollover audits, mobile UI responsiveness benchmarking, withdrawal processing verification, and 24/7 customer support responsiveness tests.', 'home', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [home] Can casino operators pay for higher ratings or placements?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('Can casino operators pay for higher ratings or placements?')) THEN
    UPDATE "Faq"
    SET answer = 'No. While commercial affiliate partnerships help fund our testing operations, commercial terms never influence review scores or tier placement. All operator ratings are dictated strictly by our objective audit criteria and editorial standards.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('Can casino operators pay for higher ratings or placements?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Can casino operators pay for higher ratings or placements?', 'No. While commercial affiliate partnerships help fund our testing operations, commercial terms never influence review scores or tier placement. All operator ratings are dictated strictly by our objective audit criteria and editorial standards.', 'home', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [home] How do you verify casino withdrawal speeds?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('How do you verify casino withdrawal speeds?')) THEN
    UPDATE "Faq"
    SET answer = 'Our analysts deposit real funds and request cashouts via e-wallets, crypto networks, and credit cards. We track the exact time from request approval to funds arriving in the destination wallet or account.', sort_order = 4, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('How do you verify casino withdrawal speeds?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How do you verify casino withdrawal speeds?', 'Our analysts deposit real funds and request cashouts via e-wallets, crypto networks, and credit cards. We track the exact time from request approval to funds arriving in the destination wallet or account.', 'home', 4, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [home] Are online casinos legal in my jurisdiction?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('Are online casinos legal in my jurisdiction?')) THEN
    UPDATE "Faq"
    SET answer = 'Legality and licensing regulations depend entirely on your country and local province or state. Always verify that online gambling is authorized in your region and that the operator holds a valid license (such as UKGC, MGA, or Curacao eGaming).', sort_order = 5, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('Are online casinos legal in my jurisdiction?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Are online casinos legal in my jurisdiction?', 'Legality and licensing regulations depend entirely on your country and local province or state. Always verify that online gambling is authorized in your region and that the operator holds a valid license (such as UKGC, MGA, or Curacao eGaming).', 'home', 5, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [home] What should I do if I encounter a dispute with a casino?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('What should I do if I encounter a dispute with a casino?')) THEN
    UPDATE "Faq"
    SET answer = 'First, contact the casino customer support team with transaction IDs and timestamps. If unresolved, reach out to the relevant licensing regulator or an alternative dispute resolution (ADR) body such as eCOGRA or IBAS.', sort_order = 6, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('home') AND LOWER(question) = LOWER('What should I do if I encounter a dispute with a casino?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What should I do if I encounter a dispute with a casino?', 'First, contact the casino customer support team with transaction IDs and timestamps. If unresolved, reach out to the relevant licensing regulator or an alternative dispute resolution (ADR) body such as eCOGRA or IBAS.', 'home', 6, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [online-casino] How do I choose the best online casino for real money?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('How do I choose the best online casino for real money?')) THEN
    UPDATE "Faq"
    SET answer = 'Look for verified regulatory licenses (MGA, UKGC, Curacao), secure SSL encryption, trusted payment methods with low fees, transparent wagering terms under 40x, and games from certified software studios like NetEnt, Pragmatic Play, and Evolution.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('How do I choose the best online casino for real money?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How do I choose the best online casino for real money?', 'Look for verified regulatory licenses (MGA, UKGC, Curacao), secure SSL encryption, trusted payment methods with low fees, transparent wagering terms under 40x, and games from certified software studios like NetEnt, Pragmatic Play, and Evolution.', 'online-casino', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [online-casino] What gaming licenses should I look for before signing up?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('What gaming licenses should I look for before signing up?')) THEN
    UPDATE "Faq"
    SET answer = 'Top-tier regulatory bodies include the Malta Gaming Authority (MGA) and the UK Gambling Commission (UKGC). Curacao eGaming licenses are also common, particularly for crypto-friendly international casinos. Always check the active license badge in the casino footer.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('What gaming licenses should I look for before signing up?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What gaming licenses should I look for before signing up?', 'Top-tier regulatory bodies include the Malta Gaming Authority (MGA) and the UK Gambling Commission (UKGC). Curacao eGaming licenses are also common, particularly for crypto-friendly international casinos. Always check the active license badge in the casino footer.', 'online-casino', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [online-casino] Are online casino games fair and not rigged?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('Are online casino games fair and not rigged?')) THEN
    UPDATE "Faq"
    SET answer = 'Legitimate, licensed casinos use certified Random Number Generators (RNG) audited by independent testing agencies like eCOGRA, iTech Labs, and GLI. These audits ensure game outcomes cannot be altered by either the casino or the player.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('Are online casino games fair and not rigged?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Are online casino games fair and not rigged?', 'Legitimate, licensed casinos use certified Random Number Generators (RNG) audited by independent testing agencies like eCOGRA, iTech Labs, and GLI. These audits ensure game outcomes cannot be altered by either the casino or the player.', 'online-casino', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [online-casino] What is the average Return to Player (RTP) at online casinos?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('What is the average Return to Player (RTP) at online casinos?')) THEN
    UPDATE "Faq"
    SET answer = 'Online slots typically have an RTP between 95% and 97%. Table games like Blackjack (up to 99.5% with basic strategy) and European Roulette (97.3%) provide the highest statistical payout returns.', sort_order = 4, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('What is the average Return to Player (RTP) at online casinos?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is the average Return to Player (RTP) at online casinos?', 'Online slots typically have an RTP between 95% and 97%. Table games like Blackjack (up to 99.5% with basic strategy) and European Roulette (97.3%) provide the highest statistical payout returns.', 'online-casino', 4, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [online-casino] What documents are required for KYC account verification?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('What documents are required for KYC account verification?')) THEN
    UPDATE "Faq"
    SET answer = 'Standard KYC (Know Your Customer) requires a government-issued photo ID (passport or driver’s license), proof of address dated within the last 3 months (utility bill or bank statement), and confirmation of payment ownership.', sort_order = 5, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('What documents are required for KYC account verification?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What documents are required for KYC account verification?', 'Standard KYC (Know Your Customer) requires a government-issued photo ID (passport or driver’s license), proof of address dated within the last 3 months (utility bill or bank statement), and confirmation of payment ownership.', 'online-casino', 5, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [online-casino] How long do payouts take at top-rated online casinos?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('How long do payouts take at top-rated online casinos?')) THEN
    UPDATE "Faq"
    SET answer = 'Crypto and e-wallet cashouts typically take between 0 and 24 hours once verified. Traditional bank wires and credit card withdrawals generally take between 2 and 5 business days depending on banking corridors.', sort_order = 6, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('online-casino') AND LOWER(question) = LOWER('How long do payouts take at top-rated online casinos?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How long do payouts take at top-rated online casinos?', 'Crypto and e-wallet cashouts typically take between 0 and 24 hours once verified. Traditional bank wires and credit card withdrawals generally take between 2 and 5 business days depending on banking corridors.', 'online-casino', 6, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [crypto-casinos] What are crypto casinos and how do they work?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('crypto-casinos') AND LOWER(question) = LOWER('What are crypto casinos and how do they work?')) THEN
    UPDATE "Faq"
    SET answer = 'Crypto casinos are online gambling platforms that accept cryptocurrencies like Bitcoin (BTC), Ethereum (ETH), and USDT for deposits and withdrawals, offering faster transactions, lower fees, and enhanced privacy.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('crypto-casinos') AND LOWER(question) = LOWER('What are crypto casinos and how do they work?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What are crypto casinos and how do they work?', 'Crypto casinos are online gambling platforms that accept cryptocurrencies like Bitcoin (BTC), Ethereum (ETH), and USDT for deposits and withdrawals, offering faster transactions, lower fees, and enhanced privacy.', 'crypto-casinos', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [crypto-casinos] Are crypto casino payouts really instant?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('crypto-casinos') AND LOWER(question) = LOWER('Are crypto casino payouts really instant?')) THEN
    UPDATE "Faq"
    SET answer = 'Yes. Once the automated cashout is processed by the casino system, funds transfer across the blockchain in minutes, limited only by network block confirmations.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('crypto-casinos') AND LOWER(question) = LOWER('Are crypto casino payouts really instant?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Are crypto casino payouts really instant?', 'Yes. Once the automated cashout is processed by the casino system, funds transfer across the blockchain in minutes, limited only by network block confirmations.', 'crypto-casinos', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [crypto-casinos] Do crypto casinos require KYC verification?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('crypto-casinos') AND LOWER(question) = LOWER('Do crypto casinos require KYC verification?')) THEN
    UPDATE "Faq"
    SET answer = 'Many crypto casinos offer anonymous gameplay with only an email and wallet address for smaller amounts. However, regulated crypto casinos may request KYC for unusually large withdrawals or suspicious activity.', sort_order = 4, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('crypto-casinos') AND LOWER(question) = LOWER('Do crypto casinos require KYC verification?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Do crypto casinos require KYC verification?', 'Many crypto casinos offer anonymous gameplay with only an email and wallet address for smaller amounts. However, regulated crypto casinos may request KYC for unusually large withdrawals or suspicious activity.', 'crypto-casinos', 4, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [fast-withdrawal-casinos] Which payment methods offer instant casino withdrawals?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('Which payment methods offer instant casino withdrawals?')) THEN
    UPDATE "Faq"
    SET answer = 'Cryptocurrencies (BTC, USDT, LTC) and modern e-wallets (Skrill, Neteller, PayPal, MuchBetter) are the fastest payout channels, routinely clearing within minutes to under 2 hours.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('Which payment methods offer instant casino withdrawals?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Which payment methods offer instant casino withdrawals?', 'Cryptocurrencies (BTC, USDT, LTC) and modern e-wallets (Skrill, Neteller, PayPal, MuchBetter) are the fastest payout channels, routinely clearing within minutes to under 2 hours.', 'fast-withdrawal-casinos', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [fast-withdrawal-casinos] Why do some casino withdrawals take longer than expected?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('Why do some casino withdrawals take longer than expected?')) THEN
    UPDATE "Faq"
    SET answer = 'Delays are usually caused by uncompleted KYC verification, active bonus wagering requirements that have not been fulfilled, or manual security checks for first-time large cashouts.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('Why do some casino withdrawals take longer than expected?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Why do some casino withdrawals take longer than expected?', 'Delays are usually caused by uncompleted KYC verification, active bonus wagering requirements that have not been fulfilled, or manual security checks for first-time large cashouts.', 'fast-withdrawal-casinos', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [fast-withdrawal-casinos] Do fast withdrawal casinos process payouts on weekends?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('Do fast withdrawal casinos process payouts on weekends?')) THEN
    UPDATE "Faq"
    SET answer = 'Top-tier fast withdrawal casinos with automated payment systems process requests 24/7, including Saturdays and Sundays. However, traditional bank wire processing is paused until business days.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('Do fast withdrawal casinos process payouts on weekends?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Do fast withdrawal casinos process payouts on weekends?', 'Top-tier fast withdrawal casinos with automated payment systems process requests 24/7, including Saturdays and Sundays. However, traditional bank wire processing is paused until business days.', 'fast-withdrawal-casinos', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [fast-withdrawal-casinos] How can I ensure my casino withdrawal is processed as fast as possible?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('How can I ensure my casino withdrawal is processed as fast as possible?')) THEN
    UPDATE "Faq"
    SET answer = 'Complete your identity verification (KYC) immediately upon registration, use the same deposit and withdrawal method, avoid breaking bonus terms, and request payouts via crypto or e-wallets.', sort_order = 4, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('fast-withdrawal-casinos') AND LOWER(question) = LOWER('How can I ensure my casino withdrawal is processed as fast as possible?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How can I ensure my casino withdrawal is processed as fast as possible?', 'Complete your identity verification (KYC) immediately upon registration, use the same deposit and withdrawal method, avoid breaking bonus terms, and request payouts via crypto or e-wallets.', 'fast-withdrawal-casinos', 4, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [live-casinos] How do live dealer casino games work?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('live-casinos') AND LOWER(question) = LOWER('How do live dealer casino games work?')) THEN
    UPDATE "Faq"
    SET answer = 'Live dealer games stream high-definition video of professional human dealers from specialized studios in real time. Optical recognition and RFID chips track card and roulette results directly into the betting interface.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('live-casinos') AND LOWER(question) = LOWER('How do live dealer casino games work?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How do live dealer casino games work?', 'Live dealer games stream high-definition video of professional human dealers from specialized studios in real time. Optical recognition and RFID chips track card and roulette results directly into the betting interface.', 'live-casinos', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [live-casinos] Can live dealers or other players see me through my camera?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('live-casinos') AND LOWER(question) = LOWER('Can live dealers or other players see me through my camera?')) THEN
    UPDATE "Faq"
    SET answer = 'No. The video stream is strictly one-way from the dealer studio to your device. Dealers only see incoming bets and player chat text messages.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('live-casinos') AND LOWER(question) = LOWER('Can live dealers or other players see me through my camera?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Can live dealers or other players see me through my camera?', 'No. The video stream is strictly one-way from the dealer studio to your device. Dealers only see incoming bets and player chat text messages.', 'live-casinos', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [live-casinos] Can I play live dealer games on mobile phones?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('live-casinos') AND LOWER(question) = LOWER('Can I play live dealer games on mobile phones?')) THEN
    UPDATE "Faq"
    SET answer = 'Yes. Top live casino providers like Evolution and Pragmatic Play Live design their studios and user interfaces to be fully touch-responsive in portrait and landscape modes on iOS and Android.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('live-casinos') AND LOWER(question) = LOWER('Can I play live dealer games on mobile phones?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Can I play live dealer games on mobile phones?', 'Yes. Top live casino providers like Evolution and Pragmatic Play Live design their studios and user interfaces to be fully touch-responsive in portrait and landscape modes on iOS and Android.', 'live-casinos', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [mobile-casinos] Can I play real money casino games on my smartphone?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('mobile-casinos') AND LOWER(question) = LOWER('Can I play real money casino games on my smartphone?')) THEN
    UPDATE "Faq"
    SET answer = 'Yes. Modern online casinos are built using HTML5, enabling smooth gameplay across iOS and Android browsers without requiring separate app store downloads.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('mobile-casinos') AND LOWER(question) = LOWER('Can I play real money casino games on my smartphone?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Can I play real money casino games on my smartphone?', 'Yes. Modern online casinos are built using HTML5, enabling smooth gameplay across iOS and Android browsers without requiring separate app store downloads.', 'mobile-casinos', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [mobile-casinos] Do mobile casinos offer the same games and bonuses as desktop sites?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('mobile-casinos') AND LOWER(question) = LOWER('Do mobile casinos offer the same games and bonuses as desktop sites?')) THEN
    UPDATE "Faq"
    SET answer = 'Yes. All modern game providers develop mobile-first versions with identical RTPs, payout structures, bonus features, and deposit promotion compatibility.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('mobile-casinos') AND LOWER(question) = LOWER('Do mobile casinos offer the same games and bonuses as desktop sites?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Do mobile casinos offer the same games and bonuses as desktop sites?', 'Yes. All modern game providers develop mobile-first versions with identical RTPs, payout structures, bonus features, and deposit promotion compatibility.', 'mobile-casinos', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [newest-casinos] Are newly launched online casinos safe to join?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('newest-casinos') AND LOWER(question) = LOWER('Are newly launched online casinos safe to join?')) THEN
    UPDATE "Faq"
    SET answer = 'New casinos are safe provided they hold verified regulatory licenses and are operated by reputable iGaming management groups with clean financial histories.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('newest-casinos') AND LOWER(question) = LOWER('Are newly launched online casinos safe to join?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Are newly launched online casinos safe to join?', 'New casinos are safe provided they hold verified regulatory licenses and are operated by reputable iGaming management groups with clean financial histories.', 'newest-casinos', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [newest-casinos] What are the benefits of playing at new casino sites?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('newest-casinos') AND LOWER(question) = LOWER('What are the benefits of playing at new casino sites?')) THEN
    UPDATE "Faq"
    SET answer = 'New casinos frequently offer competitive welcome bonuses with lower wagering terms, state-of-the-art gamification features, modern mobile designs, and wider crypto payment integrations to attract players.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('newest-casinos') AND LOWER(question) = LOWER('What are the benefits of playing at new casino sites?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What are the benefits of playing at new casino sites?', 'New casinos frequently offer competitive welcome bonuses with lower wagering terms, state-of-the-art gamification features, modern mobile designs, and wider crypto payment integrations to attract players.', 'newest-casinos', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [casino-bonuses] What is a casino welcome bonus and how does it work?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('What is a casino welcome bonus and how does it work?')) THEN
    UPDATE "Faq"
    SET answer = 'A welcome bonus is an incentive given to new depositors, typically matching a percentage of the initial deposit (e.g., 100% up to $500) and often bundled with free spins.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('What is a casino welcome bonus and how does it work?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is a casino welcome bonus and how does it work?', 'A welcome bonus is an incentive given to new depositors, typically matching a percentage of the initial deposit (e.g., 100% up to $500) and often bundled with free spins.', 'casino-bonuses', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [casino-bonuses] What are bonus wagering requirements?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('What are bonus wagering requirements?')) THEN
    UPDATE "Faq"
    SET answer = 'Wagering (or rollover) requirements dictate how many times bonus funds must be staked before winnings can be withdrawn. For instance, a 30x wagering requirement on a $100 bonus requires $3,000 in total bets.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('What are bonus wagering requirements?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What are bonus wagering requirements?', 'Wagering (or rollover) requirements dictate how many times bonus funds must be staked before winnings can be withdrawn. For instance, a 30x wagering requirement on a $100 bonus requires $3,000 in total bets.', 'casino-bonuses', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [casino-bonuses] What is a no deposit casino bonus?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('What is a no deposit casino bonus?')) THEN
    UPDATE "Faq"
    SET answer = 'A no deposit bonus gives players free credits or free spins simply for creating and verifying a new account, allowing real money gameplay without committing personal funds.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('What is a no deposit casino bonus?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is a no deposit casino bonus?', 'A no deposit bonus gives players free credits or free spins simply for creating and verifying a new account, allowing real money gameplay without committing personal funds.', 'casino-bonuses', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [casino-bonuses] Why do table games contribute less to bonus wagering than slots?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('Why do table games contribute less to bonus wagering than slots?')) THEN
    UPDATE "Faq"
    SET answer = 'Table games like Blackjack and Baccarat have a very low house edge (under 1-2%). Casinos limit their contribution (often 5% to 10%) to prevent low-risk strategy exploits.', sort_order = 4, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('casino-bonuses') AND LOWER(question) = LOWER('Why do table games contribute less to bonus wagering than slots?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Why do table games contribute less to bonus wagering than slots?', 'Table games like Blackjack and Baccarat have a very low house edge (under 1-2%). Casinos limit their contribution (often 5% to 10%) to prevent low-risk strategy exploits.', 'casino-bonuses', 4, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [slots] What is the difference between high and low volatility slots?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('slots') AND LOWER(question) = LOWER('What is the difference between high and low volatility slots?')) THEN
    UPDATE "Faq"
    SET answer = 'Low volatility slots pay out frequent smaller wins, ideal for extending playtime. High volatility slots hit winning combinations less frequently, but offer larger maximum jackpot payouts.', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('slots') AND LOWER(question) = LOWER('What is the difference between high and low volatility slots?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is the difference between high and low volatility slots?', 'Low volatility slots pay out frequent smaller wins, ideal for extending playtime. High volatility slots hit winning combinations less frequently, but offer larger maximum jackpot payouts.', 'slots', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [slots] What is RTP (Return to Player) in online slots?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('slots') AND LOWER(question) = LOWER('What is RTP (Return to Player) in online slots?')) THEN
    UPDATE "Faq"
    SET answer = 'RTP represents the statistical percentage of all wagered money that a slot game returns to players over millions of spins. A 96.5% RTP indicates an average return of $96.50 per $100 staked.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('slots') AND LOWER(question) = LOWER('What is RTP (Return to Player) in online slots?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is RTP (Return to Player) in online slots?', 'RTP represents the statistical percentage of all wagered money that a slot game returns to players over millions of spins. A 96.5% RTP indicates an average return of $96.50 per $100 staked.', 'slots', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [slots] What are progressive jackpot slots?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('slots') AND LOWER(question) = LOWER('What are progressive jackpot slots?')) THEN
    UPDATE "Faq"
    SET answer = 'Progressive jackpot slots pool a small percentage of every bet across a global network of casinos into a central jackpot that grows continuously until a lucky player triggers the grand prize.', sort_order = 3, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('slots') AND LOWER(question) = LOWER('What are progressive jackpot slots?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What are progressive jackpot slots?', 'Progressive jackpot slots pool a small percentage of every bet across a global network of casinos into a central jackpot that grows continuously until a lucky player triggers the grand prize.', 'slots', 3, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [casino-games] Which casino game offers the best odds for players?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('casino-games') AND LOWER(question) = LOWER('Which casino game offers the best odds for players?')) THEN
    UPDATE "Faq"
    SET answer = 'Single-deck Blackjack played with optimal basic strategy offers the lowest house edge (around 0.5%), followed by Baccarat banker bets (1.06%) and European Roulette (2.7%).', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('casino-games') AND LOWER(question) = LOWER('Which casino game offers the best odds for players?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'Which casino game offers the best odds for players?', 'Single-deck Blackjack played with optimal basic strategy offers the lowest house edge (around 0.5%), followed by Baccarat banker bets (1.06%) and European Roulette (2.7%).', 'casino-games', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [casino-games] What is the difference between European and American Roulette?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('casino-games') AND LOWER(question) = LOWER('What is the difference between European and American Roulette?')) THEN
    UPDATE "Faq"
    SET answer = 'European Roulette has a single zero pocket (37 pockets total) with a 2.70% house edge. American Roulette has both a single zero and a double zero (38 pockets), increasing the house edge to 5.26%.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('casino-games') AND LOWER(question) = LOWER('What is the difference between European and American Roulette?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is the difference between European and American Roulette?', 'European Roulette has a single zero pocket (37 pockets total) with a 2.70% house edge. American Roulette has both a single zero and a double zero (38 pockets), increasing the house edge to 5.26%.', 'casino-games', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [sports-betting] How do sports betting odds work?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('sports-betting') AND LOWER(question) = LOWER('How do sports betting odds work?')) THEN
    UPDATE "Faq"
    SET answer = 'Odds reflect the implied probability of an outcome and dictate potential payout. For decimal odds of 2.50, a $100 bet returns $250 ($150 profit + $100 original stake).', sort_order = 1, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('sports-betting') AND LOWER(question) = LOWER('How do sports betting odds work?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'How do sports betting odds work?', 'Odds reflect the implied probability of an outcome and dictate potential payout. For decimal odds of 2.50, a $100 bet returns $250 ($150 profit + $100 original stake).', 'sports-betting', 1, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  -- [sports-betting] What is the Cash Out feature in sports betting?
  IF EXISTS (SELECT 1 FROM "Faq" WHERE LOWER(category) = LOWER('sports-betting') AND LOWER(question) = LOWER('What is the Cash Out feature in sports betting?')) THEN
    UPDATE "Faq"
    SET answer = 'Cash Out allows bettors to settle their active wager before the event concludes, locking in guaranteed profit or minimizing losses as match circumstances change.', sort_order = 2, status = true, updated_at = NOW()
    WHERE LOWER(category) = LOWER('sports-betting') AND LOWER(question) = LOWER('What is the Cash Out feature in sports betting?');
    updated_count := updated_count + 1;
  ELSE
    INSERT INTO "Faq" (id, question, answer, category, sort_order, status, created_at, updated_at)
    VALUES (gen_random_uuid(), 'What is the Cash Out feature in sports betting?', 'Cash Out allows bettors to settle their active wager before the event concludes, locking in guaranteed profit or minimizing losses as match circumstances change.', 'sports-betting', 2, true, NOW(), NOW());
    inserted_count := inserted_count + 1;
  END IF;

  RAISE NOTICE 'Seeded Category FAQs successfully: % inserted, % updated', inserted_count, updated_count;
END $$;
