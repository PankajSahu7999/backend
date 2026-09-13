-- Casino FAQ Seeder — All 132 Casinos (Exact Slugs)
-- Generated: 2026-09-13T06:13:08.127Z
-- Idempotent: skips casinos already having >= 6 FAQs
-- Run: psql -U postgres -d casinolab -f prisma/seed-casino-faqs.sql

DO $$
DECLARE
  casino_uuid UUID;
  existing_count INTEGER;
BEGIN

  -- LokiCasino (lokicasino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'lokicasino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is LokiCasino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is LokiCasino a legitimate and licensed online casino?', 'Yes, LokiCasino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the LokiCasino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at LokiCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at LokiCasino?', 'Signing up at LokiCasino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does LokiCasino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does LokiCasino offer to new players?', 'LokiCasino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the LokiCasino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at LokiCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at LokiCasino?', 'LokiCasino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the LokiCasino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at LokiCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at LokiCasino?', 'Withdrawal times at LokiCasino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that LokiCasino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at LokiCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at LokiCasino?', 'LokiCasino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the LokiCasino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Rolletto Casino (rolletto-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'rolletto-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Rolletto Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Rolletto Casino a legitimate and licensed online casino?', 'Yes, Rolletto Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Rolletto Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Rolletto Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Rolletto Casino?', 'Signing up at Rolletto Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Rolletto Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Rolletto Casino offer to new players?', 'Rolletto Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Rolletto Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Rolletto Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Rolletto Casino?', 'Rolletto Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Rolletto Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Rolletto Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Rolletto Casino?', 'Withdrawal times at Rolletto Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Rolletto Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Rolletto Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Rolletto Casino?', 'Rolletto Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Rolletto Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Party Spinz Casino (party-spinz-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'party-spinz-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Party Spinz Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Party Spinz Casino a legitimate and licensed online casino?', 'Yes, Party Spinz Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Party Spinz Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Party Spinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Party Spinz Casino?', 'Signing up at Party Spinz Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Party Spinz Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Party Spinz Casino offer to new players?', 'Party Spinz Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Party Spinz Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Party Spinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Party Spinz Casino?', 'Party Spinz Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Party Spinz Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Party Spinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Party Spinz Casino?', 'Withdrawal times at Party Spinz Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Party Spinz Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Party Spinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Party Spinz Casino?', 'Party Spinz Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Party Spinz Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SpinGrande Casino (spingrande-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spingrande-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SpinGrande Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SpinGrande Casino a legitimate and licensed online casino?', 'Yes, SpinGrande Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SpinGrande Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SpinGrande Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SpinGrande Casino?', 'Signing up at SpinGrande Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SpinGrande Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SpinGrande Casino offer to new players?', 'SpinGrande Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SpinGrande Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SpinGrande Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SpinGrande Casino?', 'SpinGrande Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SpinGrande Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SpinGrande Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SpinGrande Casino?', 'Withdrawal times at SpinGrande Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SpinGrande Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SpinGrande Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SpinGrande Casino?', 'SpinGrande Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SpinGrande Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- HunnyPlay Casino (hunnyplay-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'hunnyplay-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is HunnyPlay Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is HunnyPlay Casino a legitimate and licensed online casino?', 'Yes, HunnyPlay Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the HunnyPlay Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at HunnyPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at HunnyPlay Casino?', 'Signing up at HunnyPlay Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does HunnyPlay Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does HunnyPlay Casino offer to new players?', 'HunnyPlay Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the HunnyPlay Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at HunnyPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at HunnyPlay Casino?', 'HunnyPlay Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the HunnyPlay Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at HunnyPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at HunnyPlay Casino?', 'Withdrawal times at HunnyPlay Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that HunnyPlay Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at HunnyPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at HunnyPlay Casino?', 'HunnyPlay Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the HunnyPlay Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- NeedForSpin Casino (needforspin-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'needforspin-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is NeedForSpin Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is NeedForSpin Casino a legitimate and licensed online casino?', 'Yes, NeedForSpin Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the NeedForSpin Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at NeedForSpin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at NeedForSpin Casino?', 'Signing up at NeedForSpin Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does NeedForSpin Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does NeedForSpin Casino offer to new players?', 'NeedForSpin Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the NeedForSpin Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at NeedForSpin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at NeedForSpin Casino?', 'NeedForSpin Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the NeedForSpin Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at NeedForSpin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at NeedForSpin Casino?', 'Withdrawal times at NeedForSpin Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that NeedForSpin Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at NeedForSpin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at NeedForSpin Casino?', 'NeedForSpin Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the NeedForSpin Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Slots Capital Casino (slots-capital-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'slots-capital-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Slots Capital Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Slots Capital Casino a legitimate and licensed online casino?', 'Yes, Slots Capital Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Slots Capital Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Slots Capital Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Slots Capital Casino?', 'Signing up at Slots Capital Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Slots Capital Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Slots Capital Casino offer to new players?', 'Slots Capital Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Slots Capital Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Slots Capital Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Slots Capital Casino?', 'Slots Capital Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Slots Capital Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Slots Capital Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Slots Capital Casino?', 'Withdrawal times at Slots Capital Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Slots Capital Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Slots Capital Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Slots Capital Casino?', 'Slots Capital Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Slots Capital Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 1Red Casino (1red-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '1red-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 1Red Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 1Red Casino a legitimate and licensed online casino?', 'Yes, 1Red Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 1Red Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 1Red Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 1Red Casino?', 'Signing up at 1Red Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 1Red Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 1Red Casino offer to new players?', '1Red Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 1Red Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 1Red Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 1Red Casino?', '1Red Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 1Red Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 1Red Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 1Red Casino?', 'Withdrawal times at 1Red Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 1Red Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 1Red Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 1Red Casino?', '1Red Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 1Red Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 777 Casino (777-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '777-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 777 Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 777 Casino a legitimate and licensed online casino?', 'Yes, 777 Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 777 Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 777 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 777 Casino?', 'Signing up at 777 Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 777 Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 777 Casino offer to new players?', '777 Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 777 Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 777 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 777 Casino?', '777 Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 777 Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 777 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 777 Casino?', 'Withdrawal times at 777 Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 777 Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 777 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 777 Casino?', '777 Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 777 Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Velobet Casino (velobet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'velobet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Velobet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Velobet Casino a legitimate and licensed online casino?', 'Yes, Velobet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Velobet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Velobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Velobet Casino?', 'Signing up at Velobet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Velobet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Velobet Casino offer to new players?', 'Velobet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Velobet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Velobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Velobet Casino?', 'Velobet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Velobet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Velobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Velobet Casino?', 'Withdrawal times at Velobet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Velobet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Velobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Velobet Casino?', 'Velobet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Velobet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- BetWest Casino (betwest-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'betwest-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is BetWest Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is BetWest Casino a legitimate and licensed online casino?', 'Yes, BetWest Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the BetWest Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at BetWest Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at BetWest Casino?', 'Signing up at BetWest Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does BetWest Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does BetWest Casino offer to new players?', 'BetWest Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the BetWest Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at BetWest Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at BetWest Casino?', 'BetWest Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the BetWest Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at BetWest Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at BetWest Casino?', 'Withdrawal times at BetWest Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that BetWest Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at BetWest Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at BetWest Casino?', 'BetWest Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the BetWest Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- TheOnlineCasino (theonlinecasino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'theonlinecasino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is TheOnlineCasino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is TheOnlineCasino a legitimate and licensed online casino?', 'Yes, TheOnlineCasino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the TheOnlineCasino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at TheOnlineCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at TheOnlineCasino?', 'Signing up at TheOnlineCasino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does TheOnlineCasino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does TheOnlineCasino offer to new players?', 'TheOnlineCasino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the TheOnlineCasino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at TheOnlineCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at TheOnlineCasino?', 'TheOnlineCasino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the TheOnlineCasino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at TheOnlineCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at TheOnlineCasino?', 'Withdrawal times at TheOnlineCasino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that TheOnlineCasino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at TheOnlineCasino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at TheOnlineCasino?', 'TheOnlineCasino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the TheOnlineCasino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Wettigo Casino (wettigo-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'wettigo-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Wettigo Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Wettigo Casino a legitimate and licensed online casino?', 'Yes, Wettigo Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Wettigo Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Wettigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Wettigo Casino?', 'Signing up at Wettigo Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Wettigo Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Wettigo Casino offer to new players?', 'Wettigo Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Wettigo Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Wettigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Wettigo Casino?', 'Wettigo Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Wettigo Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Wettigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Wettigo Casino?', 'Withdrawal times at Wettigo Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Wettigo Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Wettigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Wettigo Casino?', 'Wettigo Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Wettigo Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Pandido Casino (pandido-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'pandido-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Pandido Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Pandido Casino a legitimate and licensed online casino?', 'Yes, Pandido Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Pandido Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Pandido Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Pandido Casino?', 'Signing up at Pandido Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Pandido Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Pandido Casino offer to new players?', 'Pandido Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Pandido Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Pandido Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Pandido Casino?', 'Pandido Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Pandido Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Pandido Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Pandido Casino?', 'Withdrawal times at Pandido Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Pandido Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Pandido Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Pandido Casino?', 'Pandido Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Pandido Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Mega Dice Casino (mega-dice-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'mega-dice-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Mega Dice Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Mega Dice Casino a legitimate and licensed online casino?', 'Yes, Mega Dice Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Mega Dice Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Mega Dice Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Mega Dice Casino?', 'Signing up at Mega Dice Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Mega Dice Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Mega Dice Casino offer to new players?', 'Mega Dice Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Mega Dice Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Mega Dice Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Mega Dice Casino?', 'Mega Dice Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Mega Dice Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Mega Dice Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Mega Dice Casino?', 'Withdrawal times at Mega Dice Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Mega Dice Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Mega Dice Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Mega Dice Casino?', 'Mega Dice Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Mega Dice Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Omni Slots Casino (omni-slots-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'omni-slots-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Omni Slots Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Omni Slots Casino a legitimate and licensed online casino?', 'Yes, Omni Slots Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Omni Slots Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Omni Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Omni Slots Casino?', 'Signing up at Omni Slots Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Omni Slots Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Omni Slots Casino offer to new players?', 'Omni Slots Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Omni Slots Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Omni Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Omni Slots Casino?', 'Omni Slots Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Omni Slots Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Omni Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Omni Slots Casino?', 'Withdrawal times at Omni Slots Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Omni Slots Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Omni Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Omni Slots Casino?', 'Omni Slots Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Omni Slots Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- God of Casino (god-of-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'god-of-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is God of Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is God of Casino a legitimate and licensed online casino?', 'Yes, God of Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the God of Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at God of Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at God of Casino?', 'Signing up at God of Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does God of Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does God of Casino offer to new players?', 'God of Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the God of Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at God of Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at God of Casino?', 'God of Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the God of Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at God of Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at God of Casino?', 'Withdrawal times at God of Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that God of Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at God of Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at God of Casino?', 'God of Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the God of Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Instant Casino (instant-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'instant-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Instant Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Instant Casino a legitimate and licensed online casino?', 'Yes, Instant Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Instant Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Instant Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Instant Casino?', 'Signing up at Instant Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Instant Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Instant Casino offer to new players?', 'Instant Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Instant Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Instant Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Instant Casino?', 'Instant Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Instant Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Instant Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Instant Casino?', 'Withdrawal times at Instant Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Instant Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Instant Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Instant Casino?', 'Instant Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Instant Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Cristal Poker Casino (cristal-poker-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'cristal-poker-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Cristal Poker Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Cristal Poker Casino a legitimate and licensed online casino?', 'Yes, Cristal Poker Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Cristal Poker Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Cristal Poker Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Cristal Poker Casino?', 'Signing up at Cristal Poker Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Cristal Poker Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Cristal Poker Casino offer to new players?', 'Cristal Poker Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Cristal Poker Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Cristal Poker Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Cristal Poker Casino?', 'Cristal Poker Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Cristal Poker Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Cristal Poker Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Cristal Poker Casino?', 'Withdrawal times at Cristal Poker Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Cristal Poker Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Cristal Poker Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Cristal Poker Casino?', 'Cristal Poker Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Cristal Poker Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Casino Infinity (casino-infinity)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'casino-infinity' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Casino Infinity a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Casino Infinity a legitimate and licensed online casino?', 'Yes, Casino Infinity is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Casino Infinity website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Casino Infinity?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Casino Infinity?', 'Signing up at Casino Infinity is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Casino Infinity offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Casino Infinity offer to new players?', 'Casino Infinity offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Casino Infinity promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Casino Infinity?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Casino Infinity?', 'Casino Infinity supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Casino Infinity cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Casino Infinity?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Casino Infinity?', 'Withdrawal times at Casino Infinity depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Casino Infinity may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Casino Infinity?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Casino Infinity?', 'Casino Infinity offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Casino Infinity platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Spinight Casino (spinight-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinight-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Spinight Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Spinight Casino a legitimate and licensed online casino?', 'Yes, Spinight Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Spinight Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Spinight Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Spinight Casino?', 'Signing up at Spinight Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Spinight Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Spinight Casino offer to new players?', 'Spinight Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Spinight Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Spinight Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Spinight Casino?', 'Spinight Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Spinight Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Spinight Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Spinight Casino?', 'Withdrawal times at Spinight Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Spinight Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Spinight Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Spinight Casino?', 'Spinight Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Spinight Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Run4Win Casino (run-4win-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'run-4win-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Run4Win Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Run4Win Casino a legitimate and licensed online casino?', 'Yes, Run4Win Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Run4Win Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Run4Win Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Run4Win Casino?', 'Signing up at Run4Win Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Run4Win Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Run4Win Casino offer to new players?', 'Run4Win Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Run4Win Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Run4Win Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Run4Win Casino?', 'Run4Win Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Run4Win Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Run4Win Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Run4Win Casino?', 'Withdrawal times at Run4Win Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Run4Win Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Run4Win Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Run4Win Casino?', 'Run4Win Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Run4Win Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Bahigo Casino (bahigo-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'bahigo-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Bahigo Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Bahigo Casino a legitimate and licensed online casino?', 'Yes, Bahigo Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Bahigo Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Bahigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Bahigo Casino?', 'Signing up at Bahigo Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Bahigo Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Bahigo Casino offer to new players?', 'Bahigo Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Bahigo Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Bahigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Bahigo Casino?', 'Bahigo Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Bahigo Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Bahigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Bahigo Casino?', 'Withdrawal times at Bahigo Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Bahigo Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Bahigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Bahigo Casino?', 'Bahigo Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Bahigo Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SpinBet Casino (spinbet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinbet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SpinBet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SpinBet Casino a legitimate and licensed online casino?', 'Yes, SpinBet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SpinBet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SpinBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SpinBet Casino?', 'Signing up at SpinBet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SpinBet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SpinBet Casino offer to new players?', 'SpinBet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SpinBet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SpinBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SpinBet Casino?', 'SpinBet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SpinBet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SpinBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SpinBet Casino?', 'Withdrawal times at SpinBet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SpinBet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SpinBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SpinBet Casino?', 'SpinBet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SpinBet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- VikingLuck Casino (vikingluck-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'vikingluck-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is VikingLuck Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is VikingLuck Casino a legitimate and licensed online casino?', 'Yes, VikingLuck Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the VikingLuck Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at VikingLuck Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at VikingLuck Casino?', 'Signing up at VikingLuck Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does VikingLuck Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does VikingLuck Casino offer to new players?', 'VikingLuck Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the VikingLuck Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at VikingLuck Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at VikingLuck Casino?', 'VikingLuck Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the VikingLuck Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at VikingLuck Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at VikingLuck Casino?', 'Withdrawal times at VikingLuck Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that VikingLuck Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at VikingLuck Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at VikingLuck Casino?', 'VikingLuck Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the VikingLuck Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Realz Casino (realz-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'realz-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Realz Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Realz Casino a legitimate and licensed online casino?', 'Yes, Realz Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Realz Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Realz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Realz Casino?', 'Signing up at Realz Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Realz Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Realz Casino offer to new players?', 'Realz Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Realz Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Realz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Realz Casino?', 'Realz Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Realz Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Realz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Realz Casino?', 'Withdrawal times at Realz Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Realz Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Realz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Realz Casino?', 'Realz Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Realz Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Lucky Creek Casino (lucky-creek-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'lucky-creek-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Lucky Creek Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Lucky Creek Casino a legitimate and licensed online casino?', 'Yes, Lucky Creek Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Lucky Creek Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Lucky Creek Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Lucky Creek Casino?', 'Signing up at Lucky Creek Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Lucky Creek Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Lucky Creek Casino offer to new players?', 'Lucky Creek Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Lucky Creek Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Lucky Creek Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Lucky Creek Casino?', 'Lucky Creek Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Lucky Creek Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Lucky Creek Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Lucky Creek Casino?', 'Withdrawal times at Lucky Creek Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Lucky Creek Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Lucky Creek Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Lucky Creek Casino?', 'Lucky Creek Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Lucky Creek Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Midarion Casino (midarion-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'midarion-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Midarion Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Midarion Casino a legitimate and licensed online casino?', 'Yes, Midarion Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Midarion Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Midarion Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Midarion Casino?', 'Signing up at Midarion Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Midarion Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Midarion Casino offer to new players?', 'Midarion Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Midarion Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Midarion Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Midarion Casino?', 'Midarion Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Midarion Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Midarion Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Midarion Casino?', 'Withdrawal times at Midarion Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Midarion Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Midarion Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Midarion Casino?', 'Midarion Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Midarion Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- FastSlots Casino (fastslots-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'fastslots-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is FastSlots Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is FastSlots Casino a legitimate and licensed online casino?', 'Yes, FastSlots Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the FastSlots Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at FastSlots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at FastSlots Casino?', 'Signing up at FastSlots Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does FastSlots Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does FastSlots Casino offer to new players?', 'FastSlots Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the FastSlots Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at FastSlots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at FastSlots Casino?', 'FastSlots Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the FastSlots Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at FastSlots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at FastSlots Casino?', 'Withdrawal times at FastSlots Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that FastSlots Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at FastSlots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at FastSlots Casino?', 'FastSlots Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the FastSlots Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Rooli Casino (rooli-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'rooli-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Rooli Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Rooli Casino a legitimate and licensed online casino?', 'Yes, Rooli Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Rooli Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Rooli Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Rooli Casino?', 'Signing up at Rooli Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Rooli Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Rooli Casino offer to new players?', 'Rooli Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Rooli Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Rooli Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Rooli Casino?', 'Rooli Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Rooli Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Rooli Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Rooli Casino?', 'Withdrawal times at Rooli Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Rooli Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Rooli Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Rooli Casino?', 'Rooli Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Rooli Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Revolution Casino (revolution-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'revolution-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Revolution Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Revolution Casino a legitimate and licensed online casino?', 'Yes, Revolution Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Revolution Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Revolution Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Revolution Casino?', 'Signing up at Revolution Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Revolution Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Revolution Casino offer to new players?', 'Revolution Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Revolution Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Revolution Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Revolution Casino?', 'Revolution Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Revolution Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Revolution Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Revolution Casino?', 'Withdrawal times at Revolution Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Revolution Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Revolution Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Revolution Casino?', 'Revolution Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Revolution Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Osombet Casino (osombet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'osombet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Osombet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Osombet Casino a legitimate and licensed online casino?', 'Yes, Osombet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Osombet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Osombet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Osombet Casino?', 'Signing up at Osombet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Osombet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Osombet Casino offer to new players?', 'Osombet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Osombet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Osombet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Osombet Casino?', 'Osombet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Osombet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Osombet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Osombet Casino?', 'Withdrawal times at Osombet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Osombet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Osombet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Osombet Casino?', 'Osombet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Osombet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Turbo Wins Casino (turbo-wins-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'turbo-wins-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Turbo Wins Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Turbo Wins Casino a legitimate and licensed online casino?', 'Yes, Turbo Wins Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Turbo Wins Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Turbo Wins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Turbo Wins Casino?', 'Signing up at Turbo Wins Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Turbo Wins Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Turbo Wins Casino offer to new players?', 'Turbo Wins Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Turbo Wins Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Turbo Wins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Turbo Wins Casino?', 'Turbo Wins Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Turbo Wins Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Turbo Wins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Turbo Wins Casino?', 'Withdrawal times at Turbo Wins Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Turbo Wins Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Turbo Wins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Turbo Wins Casino?', 'Turbo Wins Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Turbo Wins Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 2UP Casino (2up-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '2up-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 2UP Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 2UP Casino a legitimate and licensed online casino?', 'Yes, 2UP Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 2UP Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 2UP Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 2UP Casino?', 'Signing up at 2UP Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 2UP Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 2UP Casino offer to new players?', '2UP Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 2UP Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 2UP Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 2UP Casino?', '2UP Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 2UP Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 2UP Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 2UP Casino?', 'Withdrawal times at 2UP Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 2UP Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 2UP Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 2UP Casino?', '2UP Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 2UP Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SpinBit Casino (spinbit-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinbit-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SpinBit Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SpinBit Casino a legitimate and licensed online casino?', 'Yes, SpinBit Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SpinBit Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SpinBit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SpinBit Casino?', 'Signing up at SpinBit Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SpinBit Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SpinBit Casino offer to new players?', 'SpinBit Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SpinBit Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SpinBit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SpinBit Casino?', 'SpinBit Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SpinBit Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SpinBit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SpinBit Casino?', 'Withdrawal times at SpinBit Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SpinBit Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SpinBit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SpinBit Casino?', 'SpinBit Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SpinBit Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Spinch Casino (spinch-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinch-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Spinch Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Spinch Casino a legitimate and licensed online casino?', 'Yes, Spinch Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Spinch Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Spinch Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Spinch Casino?', 'Signing up at Spinch Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Spinch Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Spinch Casino offer to new players?', 'Spinch Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Spinch Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Spinch Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Spinch Casino?', 'Spinch Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Spinch Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Spinch Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Spinch Casino?', 'Withdrawal times at Spinch Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Spinch Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Spinch Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Spinch Casino?', 'Spinch Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Spinch Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- RedCherry Casino (redcherry-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'redcherry-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is RedCherry Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is RedCherry Casino a legitimate and licensed online casino?', 'Yes, RedCherry Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the RedCherry Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at RedCherry Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at RedCherry Casino?', 'Signing up at RedCherry Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does RedCherry Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does RedCherry Casino offer to new players?', 'RedCherry Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the RedCherry Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at RedCherry Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at RedCherry Casino?', 'RedCherry Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the RedCherry Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at RedCherry Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at RedCherry Casino?', 'Withdrawal times at RedCherry Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that RedCherry Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at RedCherry Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at RedCherry Casino?', 'RedCherry Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the RedCherry Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- BC GAME (bc-game)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'bc-game' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is BC GAME a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is BC GAME a legitimate and licensed online casino?', 'Yes, BC GAME is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the BC GAME website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at BC GAME?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at BC GAME?', 'Signing up at BC GAME is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does BC GAME offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does BC GAME offer to new players?', 'BC GAME offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the BC GAME promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at BC GAME?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at BC GAME?', 'BC GAME supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the BC GAME cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at BC GAME?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at BC GAME?', 'Withdrawal times at BC GAME depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that BC GAME may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at BC GAME?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at BC GAME?', 'BC GAME offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the BC GAME platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Rainbet Casino (rainbet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'rainbet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Rainbet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Rainbet Casino a legitimate and licensed online casino?', 'Yes, Rainbet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Rainbet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Rainbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Rainbet Casino?', 'Signing up at Rainbet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Rainbet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Rainbet Casino offer to new players?', 'Rainbet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Rainbet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Rainbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Rainbet Casino?', 'Rainbet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Rainbet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Rainbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Rainbet Casino?', 'Withdrawal times at Rainbet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Rainbet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Rainbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Rainbet Casino?', 'Rainbet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Rainbet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Miami Club Casino (miami-club-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'miami-club-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Miami Club Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Miami Club Casino a legitimate and licensed online casino?', 'Yes, Miami Club Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Miami Club Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Miami Club Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Miami Club Casino?', 'Signing up at Miami Club Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Miami Club Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Miami Club Casino offer to new players?', 'Miami Club Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Miami Club Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Miami Club Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Miami Club Casino?', 'Miami Club Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Miami Club Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Miami Club Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Miami Club Casino?', 'Withdrawal times at Miami Club Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Miami Club Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Miami Club Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Miami Club Casino?', 'Miami Club Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Miami Club Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- WildWinz Casino (wildwinz-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'wildwinz-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is WildWinz Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is WildWinz Casino a legitimate and licensed online casino?', 'Yes, WildWinz Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the WildWinz Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at WildWinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at WildWinz Casino?', 'Signing up at WildWinz Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does WildWinz Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does WildWinz Casino offer to new players?', 'WildWinz Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the WildWinz Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at WildWinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at WildWinz Casino?', 'WildWinz Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the WildWinz Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at WildWinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at WildWinz Casino?', 'Withdrawal times at WildWinz Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that WildWinz Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at WildWinz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at WildWinz Casino?', 'WildWinz Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the WildWinz Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SlotNeo Casino (slotneo-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'slotneo-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SlotNeo Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SlotNeo Casino a legitimate and licensed online casino?', 'Yes, SlotNeo Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SlotNeo Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SlotNeo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SlotNeo Casino?', 'Signing up at SlotNeo Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SlotNeo Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SlotNeo Casino offer to new players?', 'SlotNeo Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SlotNeo Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SlotNeo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SlotNeo Casino?', 'SlotNeo Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SlotNeo Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SlotNeo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SlotNeo Casino?', 'Withdrawal times at SlotNeo Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SlotNeo Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SlotNeo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SlotNeo Casino?', 'SlotNeo Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SlotNeo Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Vave Casino (vave-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'vave-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Vave Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Vave Casino a legitimate and licensed online casino?', 'Yes, Vave Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Vave Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Vave Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Vave Casino?', 'Signing up at Vave Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Vave Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Vave Casino offer to new players?', 'Vave Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Vave Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Vave Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Vave Casino?', 'Vave Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Vave Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Vave Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Vave Casino?', 'Withdrawal times at Vave Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Vave Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Vave Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Vave Casino?', 'Vave Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Vave Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Betwarts Casino (betwarts-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'betwarts-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Betwarts Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Betwarts Casino a legitimate and licensed online casino?', 'Yes, Betwarts Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Betwarts Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Betwarts Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Betwarts Casino?', 'Signing up at Betwarts Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Betwarts Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Betwarts Casino offer to new players?', 'Betwarts Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Betwarts Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Betwarts Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Betwarts Casino?', 'Betwarts Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Betwarts Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Betwarts Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Betwarts Casino?', 'Withdrawal times at Betwarts Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Betwarts Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Betwarts Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Betwarts Casino?', 'Betwarts Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Betwarts Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Sloto Cash Casino (loki-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'loki-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Sloto Cash Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Sloto Cash Casino a legitimate and licensed online casino?', 'Yes, Sloto Cash Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Sloto Cash Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Sloto Cash Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Sloto Cash Casino?', 'Signing up at Sloto Cash Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Sloto Cash Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Sloto Cash Casino offer to new players?', 'Sloto Cash Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Sloto Cash Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Sloto Cash Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Sloto Cash Casino?', 'Sloto Cash Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Sloto Cash Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Sloto Cash Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Sloto Cash Casino?', 'Withdrawal times at Sloto Cash Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Sloto Cash Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Sloto Cash Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Sloto Cash Casino?', 'Sloto Cash Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Sloto Cash Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Lucky Hunter Casino (lucky-hunter-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'lucky-hunter-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Lucky Hunter Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Lucky Hunter Casino a legitimate and licensed online casino?', 'Yes, Lucky Hunter Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Lucky Hunter Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Lucky Hunter Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Lucky Hunter Casino?', 'Signing up at Lucky Hunter Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Lucky Hunter Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Lucky Hunter Casino offer to new players?', 'Lucky Hunter Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Lucky Hunter Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Lucky Hunter Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Lucky Hunter Casino?', 'Lucky Hunter Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Lucky Hunter Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Lucky Hunter Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Lucky Hunter Casino?', 'Withdrawal times at Lucky Hunter Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Lucky Hunter Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Lucky Hunter Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Lucky Hunter Casino?', 'Lucky Hunter Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Lucky Hunter Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Vox Casino (vox-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'vox-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Vox Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Vox Casino a legitimate and licensed online casino?', 'Yes, Vox Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Vox Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Vox Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Vox Casino?', 'Signing up at Vox Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Vox Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Vox Casino offer to new players?', 'Vox Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Vox Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Vox Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Vox Casino?', 'Vox Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Vox Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Vox Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Vox Casino?', 'Withdrawal times at Vox Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Vox Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Vox Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Vox Casino?', 'Vox Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Vox Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Run4Win Casino (2) (run4win-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'run4win-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Run4Win Casino (2) a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Run4Win Casino (2) a legitimate and licensed online casino?', 'Yes, Run4Win Casino (2) is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Run4Win Casino (2) website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Run4Win Casino (2)?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Run4Win Casino (2)?', 'Signing up at Run4Win Casino (2) is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Run4Win Casino (2) offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Run4Win Casino (2) offer to new players?', 'Run4Win Casino (2) offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Run4Win Casino (2) promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Run4Win Casino (2)?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Run4Win Casino (2)?', 'Run4Win Casino (2) supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Run4Win Casino (2) cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Run4Win Casino (2)?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Run4Win Casino (2)?', 'Withdrawal times at Run4Win Casino (2) depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Run4Win Casino (2) may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Run4Win Casino (2)?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Run4Win Casino (2)?', 'Run4Win Casino (2) offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Run4Win Casino (2) platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Retro Bet Casino (retro-bet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'retro-bet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Retro Bet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Retro Bet Casino a legitimate and licensed online casino?', 'Yes, Retro Bet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Retro Bet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Retro Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Retro Bet Casino?', 'Signing up at Retro Bet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Retro Bet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Retro Bet Casino offer to new players?', 'Retro Bet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Retro Bet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Retro Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Retro Bet Casino?', 'Retro Bet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Retro Bet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Retro Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Retro Bet Casino?', 'Withdrawal times at Retro Bet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Retro Bet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Retro Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Retro Bet Casino?', 'Retro Bet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Retro Bet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Goldex Casino (goldex-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'goldex-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Goldex Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Goldex Casino a legitimate and licensed online casino?', 'Yes, Goldex Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Goldex Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Goldex Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Goldex Casino?', 'Signing up at Goldex Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Goldex Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Goldex Casino offer to new players?', 'Goldex Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Goldex Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Goldex Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Goldex Casino?', 'Goldex Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Goldex Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Goldex Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Goldex Casino?', 'Withdrawal times at Goldex Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Goldex Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Goldex Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Goldex Casino?', 'Goldex Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Goldex Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- N1Bet Casino (n1bet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'n1bet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is N1Bet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is N1Bet Casino a legitimate and licensed online casino?', 'Yes, N1Bet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the N1Bet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at N1Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at N1Bet Casino?', 'Signing up at N1Bet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does N1Bet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does N1Bet Casino offer to new players?', 'N1Bet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the N1Bet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at N1Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at N1Bet Casino?', 'N1Bet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the N1Bet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at N1Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at N1Bet Casino?', 'Withdrawal times at N1Bet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that N1Bet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at N1Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at N1Bet Casino?', 'N1Bet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the N1Bet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- bitcoincasinovip (bitcoincasinovip)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'bitcoincasinovip' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is bitcoincasinovip a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is bitcoincasinovip a legitimate and licensed online casino?', 'Yes, bitcoincasinovip is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the bitcoincasinovip website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at bitcoincasinovip?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at bitcoincasinovip?', 'Signing up at bitcoincasinovip is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does bitcoincasinovip offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does bitcoincasinovip offer to new players?', 'bitcoincasinovip offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the bitcoincasinovip promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at bitcoincasinovip?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at bitcoincasinovip?', 'bitcoincasinovip supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the bitcoincasinovip cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at bitcoincasinovip?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at bitcoincasinovip?', 'Withdrawal times at bitcoincasinovip depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that bitcoincasinovip may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at bitcoincasinovip?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at bitcoincasinovip?', 'bitcoincasinovip offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the bitcoincasinovip platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Vegastars Casino (vegastars-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'vegastars-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Vegastars Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Vegastars Casino a legitimate and licensed online casino?', 'Yes, Vegastars Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Vegastars Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Vegastars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Vegastars Casino?', 'Signing up at Vegastars Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Vegastars Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Vegastars Casino offer to new players?', 'Vegastars Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Vegastars Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Vegastars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Vegastars Casino?', 'Vegastars Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Vegastars Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Vegastars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Vegastars Casino?', 'Withdrawal times at Vegastars Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Vegastars Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Vegastars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Vegastars Casino?', 'Vegastars Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Vegastars Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Shotz Casino (shotz-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'shotz-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Shotz Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Shotz Casino a legitimate and licensed online casino?', 'Yes, Shotz Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Shotz Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Shotz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Shotz Casino?', 'Signing up at Shotz Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Shotz Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Shotz Casino offer to new players?', 'Shotz Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Shotz Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Shotz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Shotz Casino?', 'Shotz Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Shotz Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Shotz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Shotz Casino?', 'Withdrawal times at Shotz Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Shotz Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Shotz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Shotz Casino?', 'Shotz Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Shotz Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Royal Reels Casino (royal-reels-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'royal-reels-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Royal Reels Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Royal Reels Casino a legitimate and licensed online casino?', 'Yes, Royal Reels Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Royal Reels Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Royal Reels Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Royal Reels Casino?', 'Signing up at Royal Reels Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Royal Reels Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Royal Reels Casino offer to new players?', 'Royal Reels Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Royal Reels Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Royal Reels Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Royal Reels Casino?', 'Royal Reels Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Royal Reels Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Royal Reels Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Royal Reels Casino?', 'Withdrawal times at Royal Reels Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Royal Reels Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Royal Reels Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Royal Reels Casino?', 'Royal Reels Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Royal Reels Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Casino Friday (casino-friday)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'casino-friday' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Casino Friday a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Casino Friday a legitimate and licensed online casino?', 'Yes, Casino Friday is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Casino Friday website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Casino Friday?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Casino Friday?', 'Signing up at Casino Friday is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Casino Friday offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Casino Friday offer to new players?', 'Casino Friday offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Casino Friday promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Casino Friday?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Casino Friday?', 'Casino Friday supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Casino Friday cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Casino Friday?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Casino Friday?', 'Withdrawal times at Casino Friday depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Casino Friday may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Casino Friday?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Casino Friday?', 'Casino Friday offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Casino Friday platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- iNetBet Casino (inetbet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'inetbet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is iNetBet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is iNetBet Casino a legitimate and licensed online casino?', 'Yes, iNetBet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the iNetBet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at iNetBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at iNetBet Casino?', 'Signing up at iNetBet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does iNetBet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does iNetBet Casino offer to new players?', 'iNetBet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the iNetBet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at iNetBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at iNetBet Casino?', 'iNetBet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the iNetBet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at iNetBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at iNetBet Casino?', 'Withdrawal times at iNetBet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that iNetBet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at iNetBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at iNetBet Casino?', 'iNetBet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the iNetBet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- uptownaces (uptownaces)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'uptownaces' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is uptownaces a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is uptownaces a legitimate and licensed online casino?', 'Yes, uptownaces is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the uptownaces website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at uptownaces?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at uptownaces?', 'Signing up at uptownaces is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does uptownaces offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does uptownaces offer to new players?', 'uptownaces offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the uptownaces promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at uptownaces?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at uptownaces?', 'uptownaces supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the uptownaces cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at uptownaces?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at uptownaces?', 'Withdrawal times at uptownaces depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that uptownaces may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at uptownaces?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at uptownaces?', 'uptownaces offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the uptownaces platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 24Bettle Casino (24bettle-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '24bettle-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 24Bettle Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 24Bettle Casino a legitimate and licensed online casino?', 'Yes, 24Bettle Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 24Bettle Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 24Bettle Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 24Bettle Casino?', 'Signing up at 24Bettle Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 24Bettle Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 24Bettle Casino offer to new players?', '24Bettle Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 24Bettle Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 24Bettle Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 24Bettle Casino?', '24Bettle Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 24Bettle Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 24Bettle Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 24Bettle Casino?', 'Withdrawal times at 24Bettle Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 24Bettle Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 24Bettle Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 24Bettle Casino?', '24Bettle Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 24Bettle Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Mundoapostas Casino (mundoapostas-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'mundoapostas-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Mundoapostas Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Mundoapostas Casino a legitimate and licensed online casino?', 'Yes, Mundoapostas Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Mundoapostas Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Mundoapostas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Mundoapostas Casino?', 'Signing up at Mundoapostas Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Mundoapostas Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Mundoapostas Casino offer to new players?', 'Mundoapostas Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Mundoapostas Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Mundoapostas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Mundoapostas Casino?', 'Mundoapostas Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Mundoapostas Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Mundoapostas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Mundoapostas Casino?', 'Withdrawal times at Mundoapostas Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Mundoapostas Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Mundoapostas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Mundoapostas Casino?', 'Mundoapostas Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Mundoapostas Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Big5Casino (big5casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'big5casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Big5Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Big5Casino a legitimate and licensed online casino?', 'Yes, Big5Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Big5Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Big5Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Big5Casino?', 'Signing up at Big5Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Big5Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Big5Casino offer to new players?', 'Big5Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Big5Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Big5Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Big5Casino?', 'Big5Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Big5Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Big5Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Big5Casino?', 'Withdrawal times at Big5Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Big5Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Big5Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Big5Casino?', 'Big5Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Big5Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Red Stag Casino (red-stag-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'red-stag-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Red Stag Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Red Stag Casino a legitimate and licensed online casino?', 'Yes, Red Stag Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Red Stag Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Red Stag Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Red Stag Casino?', 'Signing up at Red Stag Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Red Stag Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Red Stag Casino offer to new players?', 'Red Stag Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Red Stag Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Red Stag Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Red Stag Casino?', 'Red Stag Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Red Stag Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Red Stag Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Red Stag Casino?', 'Withdrawal times at Red Stag Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Red Stag Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Red Stag Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Red Stag Casino?', 'Red Stag Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Red Stag Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Regent Play (regent-play)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'regent-play' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Regent Play a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Regent Play a legitimate and licensed online casino?', 'Yes, Regent Play is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Regent Play website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Regent Play?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Regent Play?', 'Signing up at Regent Play is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Regent Play offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Regent Play offer to new players?', 'Regent Play offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Regent Play promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Regent Play?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Regent Play?', 'Regent Play supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Regent Play cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Regent Play?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Regent Play?', 'Withdrawal times at Regent Play depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Regent Play may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Regent Play?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Regent Play?', 'Regent Play offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Regent Play platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Gambeta10 Casino (gambeta10-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'gambeta10-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Gambeta10 Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Gambeta10 Casino a legitimate and licensed online casino?', 'Yes, Gambeta10 Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Gambeta10 Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Gambeta10 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Gambeta10 Casino?', 'Signing up at Gambeta10 Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Gambeta10 Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Gambeta10 Casino offer to new players?', 'Gambeta10 Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Gambeta10 Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Gambeta10 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Gambeta10 Casino?', 'Gambeta10 Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Gambeta10 Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Gambeta10 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Gambeta10 Casino?', 'Withdrawal times at Gambeta10 Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Gambeta10 Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Gambeta10 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Gambeta10 Casino?', 'Gambeta10 Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Gambeta10 Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- b-Bets Casino (bbets-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'bbets-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is b-Bets Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is b-Bets Casino a legitimate and licensed online casino?', 'Yes, b-Bets Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the b-Bets Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at b-Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at b-Bets Casino?', 'Signing up at b-Bets Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does b-Bets Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does b-Bets Casino offer to new players?', 'b-Bets Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the b-Bets Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at b-Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at b-Bets Casino?', 'b-Bets Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the b-Bets Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at b-Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at b-Bets Casino?', 'Withdrawal times at b-Bets Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that b-Bets Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at b-Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at b-Bets Casino?', 'b-Bets Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the b-Bets Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- QueenPlay (queenplay)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'queenplay' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is QueenPlay a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is QueenPlay a legitimate and licensed online casino?', 'Yes, QueenPlay is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the QueenPlay website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at QueenPlay?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at QueenPlay?', 'Signing up at QueenPlay is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does QueenPlay offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does QueenPlay offer to new players?', 'QueenPlay offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the QueenPlay promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at QueenPlay?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at QueenPlay?', 'QueenPlay supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the QueenPlay cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at QueenPlay?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at QueenPlay?', 'Withdrawal times at QueenPlay depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that QueenPlay may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at QueenPlay?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at QueenPlay?', 'QueenPlay offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the QueenPlay platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Vicibet Casino (vicibet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'vicibet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Vicibet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Vicibet Casino a legitimate and licensed online casino?', 'Yes, Vicibet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Vicibet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Vicibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Vicibet Casino?', 'Signing up at Vicibet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Vicibet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Vicibet Casino offer to new players?', 'Vicibet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Vicibet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Vicibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Vicibet Casino?', 'Vicibet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Vicibet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Vicibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Vicibet Casino?', 'Withdrawal times at Vicibet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Vicibet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Vicibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Vicibet Casino?', 'Vicibet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Vicibet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Casino Sieger (casino-sieger)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'casino-sieger' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Casino Sieger a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Casino Sieger a legitimate and licensed online casino?', 'Yes, Casino Sieger is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Casino Sieger website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Casino Sieger?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Casino Sieger?', 'Signing up at Casino Sieger is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Casino Sieger offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Casino Sieger offer to new players?', 'Casino Sieger offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Casino Sieger promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Casino Sieger?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Casino Sieger?', 'Casino Sieger supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Casino Sieger cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Casino Sieger?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Casino Sieger?', 'Withdrawal times at Casino Sieger depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Casino Sieger may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Casino Sieger?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Casino Sieger?', 'Casino Sieger offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Casino Sieger platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Plaza Royal (plaza-royal)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'plaza-royal' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Plaza Royal a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Plaza Royal a legitimate and licensed online casino?', 'Yes, Plaza Royal is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Plaza Royal website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Plaza Royal?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Plaza Royal?', 'Signing up at Plaza Royal is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Plaza Royal offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Plaza Royal offer to new players?', 'Plaza Royal offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Plaza Royal promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Plaza Royal?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Plaza Royal?', 'Plaza Royal supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Plaza Royal cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Plaza Royal?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Plaza Royal?', 'Withdrawal times at Plaza Royal depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Plaza Royal may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Plaza Royal?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Plaza Royal?', 'Plaza Royal offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Plaza Royal platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- LuckyBull Casino (luckybull-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'luckybull-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is LuckyBull Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is LuckyBull Casino a legitimate and licensed online casino?', 'Yes, LuckyBull Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the LuckyBull Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at LuckyBull Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at LuckyBull Casino?', 'Signing up at LuckyBull Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does LuckyBull Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does LuckyBull Casino offer to new players?', 'LuckyBull Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the LuckyBull Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at LuckyBull Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at LuckyBull Casino?', 'LuckyBull Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the LuckyBull Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at LuckyBull Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at LuckyBull Casino?', 'Withdrawal times at LuckyBull Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that LuckyBull Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at LuckyBull Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at LuckyBull Casino?', 'LuckyBull Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the LuckyBull Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SlottoJAM Casino (slottojam-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'slottojam-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SlottoJAM Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SlottoJAM Casino a legitimate and licensed online casino?', 'Yes, SlottoJAM Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SlottoJAM Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SlottoJAM Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SlottoJAM Casino?', 'Signing up at SlottoJAM Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SlottoJAM Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SlottoJAM Casino offer to new players?', 'SlottoJAM Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SlottoJAM Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SlottoJAM Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SlottoJAM Casino?', 'SlottoJAM Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SlottoJAM Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SlottoJAM Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SlottoJAM Casino?', 'Withdrawal times at SlottoJAM Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SlottoJAM Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SlottoJAM Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SlottoJAM Casino?', 'SlottoJAM Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SlottoJAM Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- KikoBet Casino (kikobet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'kikobet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is KikoBet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is KikoBet Casino a legitimate and licensed online casino?', 'Yes, KikoBet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the KikoBet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at KikoBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at KikoBet Casino?', 'Signing up at KikoBet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does KikoBet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does KikoBet Casino offer to new players?', 'KikoBet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the KikoBet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at KikoBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at KikoBet Casino?', 'KikoBet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the KikoBet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at KikoBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at KikoBet Casino?', 'Withdrawal times at KikoBet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that KikoBet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at KikoBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at KikoBet Casino?', 'KikoBet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the KikoBet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- ReloadBet (reloadbet)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'reloadbet' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is ReloadBet a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is ReloadBet a legitimate and licensed online casino?', 'Yes, ReloadBet is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the ReloadBet website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at ReloadBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at ReloadBet?', 'Signing up at ReloadBet is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does ReloadBet offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does ReloadBet offer to new players?', 'ReloadBet offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the ReloadBet promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at ReloadBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at ReloadBet?', 'ReloadBet supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the ReloadBet cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at ReloadBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at ReloadBet?', 'Withdrawal times at ReloadBet depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that ReloadBet may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at ReloadBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at ReloadBet?', 'ReloadBet offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the ReloadBet platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- LSbet Casino (lsbet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'lsbet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is LSbet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is LSbet Casino a legitimate and licensed online casino?', 'Yes, LSbet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the LSbet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at LSbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at LSbet Casino?', 'Signing up at LSbet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does LSbet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does LSbet Casino offer to new players?', 'LSbet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the LSbet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at LSbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at LSbet Casino?', 'LSbet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the LSbet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at LSbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at LSbet Casino?', 'Withdrawal times at LSbet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that LSbet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at LSbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at LSbet Casino?', 'LSbet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the LSbet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Rembrandt Casino (rembrandt-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'rembrandt-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Rembrandt Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Rembrandt Casino a legitimate and licensed online casino?', 'Yes, Rembrandt Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Rembrandt Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Rembrandt Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Rembrandt Casino?', 'Signing up at Rembrandt Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Rembrandt Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Rembrandt Casino offer to new players?', 'Rembrandt Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Rembrandt Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Rembrandt Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Rembrandt Casino?', 'Rembrandt Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Rembrandt Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Rembrandt Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Rembrandt Casino?', 'Withdrawal times at Rembrandt Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Rembrandt Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Rembrandt Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Rembrandt Casino?', 'Rembrandt Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Rembrandt Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Tournaverse Casino (tournaverse-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'tournaverse-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Tournaverse Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Tournaverse Casino a legitimate and licensed online casino?', 'Yes, Tournaverse Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Tournaverse Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Tournaverse Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Tournaverse Casino?', 'Signing up at Tournaverse Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Tournaverse Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Tournaverse Casino offer to new players?', 'Tournaverse Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Tournaverse Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Tournaverse Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Tournaverse Casino?', 'Tournaverse Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Tournaverse Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Tournaverse Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Tournaverse Casino?', 'Withdrawal times at Tournaverse Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Tournaverse Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Tournaverse Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Tournaverse Casino?', 'Tournaverse Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Tournaverse Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Ninlay Casino (ninlay-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'ninlay-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Ninlay Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Ninlay Casino a legitimate and licensed online casino?', 'Yes, Ninlay Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Ninlay Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Ninlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Ninlay Casino?', 'Signing up at Ninlay Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Ninlay Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Ninlay Casino offer to new players?', 'Ninlay Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Ninlay Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Ninlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Ninlay Casino?', 'Ninlay Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Ninlay Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Ninlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Ninlay Casino?', 'Withdrawal times at Ninlay Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Ninlay Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Ninlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Ninlay Casino?', 'Ninlay Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Ninlay Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- TornadoBet (tornadobet)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'tornadobet' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is TornadoBet a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is TornadoBet a legitimate and licensed online casino?', 'Yes, TornadoBet is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the TornadoBet website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at TornadoBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at TornadoBet?', 'Signing up at TornadoBet is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does TornadoBet offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does TornadoBet offer to new players?', 'TornadoBet offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the TornadoBet promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at TornadoBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at TornadoBet?', 'TornadoBet supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the TornadoBet cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at TornadoBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at TornadoBet?', 'Withdrawal times at TornadoBet depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that TornadoBet may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at TornadoBet?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at TornadoBet?', 'TornadoBet offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the TornadoBet platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- TonyBet Casino (tonybet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'tonybet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is TonyBet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is TonyBet Casino a legitimate and licensed online casino?', 'Yes, TonyBet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the TonyBet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at TonyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at TonyBet Casino?', 'Signing up at TonyBet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does TonyBet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does TonyBet Casino offer to new players?', 'TonyBet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the TonyBet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at TonyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at TonyBet Casino?', 'TonyBet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the TonyBet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at TonyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at TonyBet Casino?', 'Withdrawal times at TonyBet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that TonyBet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at TonyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at TonyBet Casino?', 'TonyBet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the TonyBet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SvenPlay Casino (svenplay-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'svenplay-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SvenPlay Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SvenPlay Casino a legitimate and licensed online casino?', 'Yes, SvenPlay Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SvenPlay Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SvenPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SvenPlay Casino?', 'Signing up at SvenPlay Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SvenPlay Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SvenPlay Casino offer to new players?', 'SvenPlay Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SvenPlay Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SvenPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SvenPlay Casino?', 'SvenPlay Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SvenPlay Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SvenPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SvenPlay Casino?', 'Withdrawal times at SvenPlay Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SvenPlay Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SvenPlay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SvenPlay Casino?', 'SvenPlay Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SvenPlay Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Jackbit Casino (jackbit-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'jackbit-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Jackbit Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Jackbit Casino a legitimate and licensed online casino?', 'Yes, Jackbit Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Jackbit Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Jackbit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Jackbit Casino?', 'Signing up at Jackbit Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Jackbit Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Jackbit Casino offer to new players?', 'Jackbit Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Jackbit Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Jackbit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Jackbit Casino?', 'Jackbit Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Jackbit Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Jackbit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Jackbit Casino?', 'Withdrawal times at Jackbit Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Jackbit Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Jackbit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Jackbit Casino?', 'Jackbit Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Jackbit Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 22bet Casino (22bet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '22bet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 22bet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 22bet Casino a legitimate and licensed online casino?', 'Yes, 22bet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 22bet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 22bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 22bet Casino?', 'Signing up at 22bet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 22bet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 22bet Casino offer to new players?', '22bet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 22bet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 22bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 22bet Casino?', '22bet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 22bet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 22bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 22bet Casino?', 'Withdrawal times at 22bet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 22bet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 22bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 22bet Casino?', '22bet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 22bet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Cazimbo (cazimbo)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'cazimbo' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Cazimbo a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Cazimbo a legitimate and licensed online casino?', 'Yes, Cazimbo is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Cazimbo website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Cazimbo?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Cazimbo?', 'Signing up at Cazimbo is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Cazimbo offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Cazimbo offer to new players?', 'Cazimbo offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Cazimbo promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Cazimbo?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Cazimbo?', 'Cazimbo supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Cazimbo cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Cazimbo?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Cazimbo?', 'Withdrawal times at Cazimbo depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Cazimbo may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Cazimbo?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Cazimbo?', 'Cazimbo offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Cazimbo platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Smokace Casino (smokace-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'smokace-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Smokace Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Smokace Casino a legitimate and licensed online casino?', 'Yes, Smokace Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Smokace Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Smokace Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Smokace Casino?', 'Signing up at Smokace Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Smokace Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Smokace Casino offer to new players?', 'Smokace Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Smokace Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Smokace Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Smokace Casino?', 'Smokace Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Smokace Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Smokace Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Smokace Casino?', 'Withdrawal times at Smokace Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Smokace Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Smokace Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Smokace Casino?', 'Smokace Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Smokace Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Gomblingo Casino (gomblingo-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'gomblingo-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Gomblingo Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Gomblingo Casino a legitimate and licensed online casino?', 'Yes, Gomblingo Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Gomblingo Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Gomblingo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Gomblingo Casino?', 'Signing up at Gomblingo Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Gomblingo Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Gomblingo Casino offer to new players?', 'Gomblingo Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Gomblingo Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Gomblingo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Gomblingo Casino?', 'Gomblingo Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Gomblingo Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Gomblingo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Gomblingo Casino?', 'Withdrawal times at Gomblingo Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Gomblingo Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Gomblingo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Gomblingo Casino?', 'Gomblingo Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Gomblingo Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Weiss Casino (weiss-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'weiss-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Weiss Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Weiss Casino a legitimate and licensed online casino?', 'Yes, Weiss Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Weiss Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Weiss Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Weiss Casino?', 'Signing up at Weiss Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Weiss Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Weiss Casino offer to new players?', 'Weiss Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Weiss Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Weiss Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Weiss Casino?', 'Weiss Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Weiss Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Weiss Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Weiss Casino?', 'Withdrawal times at Weiss Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Weiss Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Weiss Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Weiss Casino?', 'Weiss Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Weiss Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Greenluck (greenluck)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'greenluck' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Greenluck a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Greenluck a legitimate and licensed online casino?', 'Yes, Greenluck is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Greenluck website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Greenluck?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Greenluck?', 'Signing up at Greenluck is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Greenluck offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Greenluck offer to new players?', 'Greenluck offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Greenluck promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Greenluck?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Greenluck?', 'Greenluck supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Greenluck cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Greenluck?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Greenluck?', 'Withdrawal times at Greenluck depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Greenluck may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Greenluck?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Greenluck?', 'Greenluck offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Greenluck platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- WinLegends Casino (winlegends-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'winlegends-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is WinLegends Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is WinLegends Casino a legitimate and licensed online casino?', 'Yes, WinLegends Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the WinLegends Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at WinLegends Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at WinLegends Casino?', 'Signing up at WinLegends Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does WinLegends Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does WinLegends Casino offer to new players?', 'WinLegends Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the WinLegends Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at WinLegends Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at WinLegends Casino?', 'WinLegends Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the WinLegends Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at WinLegends Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at WinLegends Casino?', 'Withdrawal times at WinLegends Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that WinLegends Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at WinLegends Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at WinLegends Casino?', 'WinLegends Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the WinLegends Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- CosmicSlot Casino (cosmicslot-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'cosmicslot-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is CosmicSlot Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is CosmicSlot Casino a legitimate and licensed online casino?', 'Yes, CosmicSlot Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the CosmicSlot Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at CosmicSlot Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at CosmicSlot Casino?', 'Signing up at CosmicSlot Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does CosmicSlot Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does CosmicSlot Casino offer to new players?', 'CosmicSlot Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the CosmicSlot Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at CosmicSlot Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at CosmicSlot Casino?', 'CosmicSlot Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the CosmicSlot Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at CosmicSlot Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at CosmicSlot Casino?', 'Withdrawal times at CosmicSlot Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that CosmicSlot Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at CosmicSlot Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at CosmicSlot Casino?', 'CosmicSlot Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the CosmicSlot Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- yoyospins (yoyospins)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'yoyospins' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is yoyospins a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is yoyospins a legitimate and licensed online casino?', 'Yes, yoyospins is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the yoyospins website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at yoyospins?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at yoyospins?', 'Signing up at yoyospins is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does yoyospins offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does yoyospins offer to new players?', 'yoyospins offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the yoyospins promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at yoyospins?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at yoyospins?', 'yoyospins supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the yoyospins cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at yoyospins?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at yoyospins?', 'Withdrawal times at yoyospins depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that yoyospins may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at yoyospins?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at yoyospins?', 'yoyospins offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the yoyospins platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Nucleonbet Casino (nucleonbet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'nucleonbet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Nucleonbet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Nucleonbet Casino a legitimate and licensed online casino?', 'Yes, Nucleonbet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Nucleonbet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Nucleonbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Nucleonbet Casino?', 'Signing up at Nucleonbet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Nucleonbet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Nucleonbet Casino offer to new players?', 'Nucleonbet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Nucleonbet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Nucleonbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Nucleonbet Casino?', 'Nucleonbet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Nucleonbet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Nucleonbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Nucleonbet Casino?', 'Withdrawal times at Nucleonbet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Nucleonbet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Nucleonbet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Nucleonbet Casino?', 'Nucleonbet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Nucleonbet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Stelario Casino (stelario-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'stelario-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Stelario Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Stelario Casino a legitimate and licensed online casino?', 'Yes, Stelario Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Stelario Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Stelario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Stelario Casino?', 'Signing up at Stelario Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Stelario Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Stelario Casino offer to new players?', 'Stelario Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Stelario Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Stelario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Stelario Casino?', 'Stelario Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Stelario Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Stelario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Stelario Casino?', 'Withdrawal times at Stelario Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Stelario Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Stelario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Stelario Casino?', 'Stelario Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Stelario Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- King Billy Casino (king-billy-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'king-billy-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is King Billy Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is King Billy Casino a legitimate and licensed online casino?', 'Yes, King Billy Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the King Billy Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at King Billy Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at King Billy Casino?', 'Signing up at King Billy Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does King Billy Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does King Billy Casino offer to new players?', 'King Billy Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the King Billy Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at King Billy Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at King Billy Casino?', 'King Billy Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the King Billy Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at King Billy Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at King Billy Casino?', 'Withdrawal times at King Billy Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that King Billy Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at King Billy Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at King Billy Casino?', 'King Billy Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the King Billy Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Boho Casino (boho-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'boho-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Boho Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Boho Casino a legitimate and licensed online casino?', 'Yes, Boho Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Boho Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Boho Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Boho Casino?', 'Signing up at Boho Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Boho Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Boho Casino offer to new players?', 'Boho Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Boho Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Boho Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Boho Casino?', 'Boho Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Boho Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Boho Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Boho Casino?', 'Withdrawal times at Boho Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Boho Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Boho Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Boho Casino?', 'Boho Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Boho Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Wallacebet Casino (wallacebet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'wallacebet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Wallacebet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Wallacebet Casino a legitimate and licensed online casino?', 'Yes, Wallacebet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Wallacebet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Wallacebet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Wallacebet Casino?', 'Signing up at Wallacebet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Wallacebet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Wallacebet Casino offer to new players?', 'Wallacebet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Wallacebet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Wallacebet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Wallacebet Casino?', 'Wallacebet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Wallacebet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Wallacebet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Wallacebet Casino?', 'Withdrawal times at Wallacebet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Wallacebet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Wallacebet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Wallacebet Casino?', 'Wallacebet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Wallacebet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- AllSpins Casino (allspins-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'allspins-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is AllSpins Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is AllSpins Casino a legitimate and licensed online casino?', 'Yes, AllSpins Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the AllSpins Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at AllSpins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at AllSpins Casino?', 'Signing up at AllSpins Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does AllSpins Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does AllSpins Casino offer to new players?', 'AllSpins Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the AllSpins Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at AllSpins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at AllSpins Casino?', 'AllSpins Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the AllSpins Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at AllSpins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at AllSpins Casino?', 'Withdrawal times at AllSpins Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that AllSpins Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at AllSpins Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at AllSpins Casino?', 'AllSpins Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the AllSpins Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Del Oro Casino (del-oro-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'del-oro-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Del Oro Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Del Oro Casino a legitimate and licensed online casino?', 'Yes, Del Oro Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Del Oro Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Del Oro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Del Oro Casino?', 'Signing up at Del Oro Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Del Oro Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Del Oro Casino offer to new players?', 'Del Oro Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Del Oro Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Del Oro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Del Oro Casino?', 'Del Oro Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Del Oro Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Del Oro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Del Oro Casino?', 'Withdrawal times at Del Oro Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Del Oro Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Del Oro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Del Oro Casino?', 'Del Oro Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Del Oro Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Lapilanders Casino (lapilanders-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'lapilanders-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Lapilanders Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Lapilanders Casino a legitimate and licensed online casino?', 'Yes, Lapilanders Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Lapilanders Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Lapilanders Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Lapilanders Casino?', 'Signing up at Lapilanders Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Lapilanders Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Lapilanders Casino offer to new players?', 'Lapilanders Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Lapilanders Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Lapilanders Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Lapilanders Casino?', 'Lapilanders Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Lapilanders Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Lapilanders Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Lapilanders Casino?', 'Withdrawal times at Lapilanders Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Lapilanders Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Lapilanders Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Lapilanders Casino?', 'Lapilanders Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Lapilanders Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Syndicate Casino (syndicate-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'syndicate-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Syndicate Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Syndicate Casino a legitimate and licensed online casino?', 'Yes, Syndicate Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Syndicate Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Syndicate Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Syndicate Casino?', 'Signing up at Syndicate Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Syndicate Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Syndicate Casino offer to new players?', 'Syndicate Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Syndicate Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Syndicate Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Syndicate Casino?', 'Syndicate Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Syndicate Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Syndicate Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Syndicate Casino?', 'Withdrawal times at Syndicate Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Syndicate Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Syndicate Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Syndicate Casino?', 'Syndicate Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Syndicate Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Evobet Casino (evobet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'evobet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Evobet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Evobet Casino a legitimate and licensed online casino?', 'Yes, Evobet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Evobet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Evobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Evobet Casino?', 'Signing up at Evobet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Evobet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Evobet Casino offer to new players?', 'Evobet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Evobet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Evobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Evobet Casino?', 'Evobet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Evobet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Evobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Evobet Casino?', 'Withdrawal times at Evobet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Evobet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Evobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Evobet Casino?', 'Evobet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Evobet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Slots Gallery Casino (slots-gallery-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'slots-gallery-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Slots Gallery Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Slots Gallery Casino a legitimate and licensed online casino?', 'Yes, Slots Gallery Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Slots Gallery Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Slots Gallery Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Slots Gallery Casino?', 'Signing up at Slots Gallery Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Slots Gallery Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Slots Gallery Casino offer to new players?', 'Slots Gallery Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Slots Gallery Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Slots Gallery Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Slots Gallery Casino?', 'Slots Gallery Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Slots Gallery Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Slots Gallery Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Slots Gallery Casino?', 'Withdrawal times at Slots Gallery Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Slots Gallery Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Slots Gallery Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Slots Gallery Casino?', 'Slots Gallery Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Slots Gallery Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 20bet Casino (20bet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '20bet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 20bet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 20bet Casino a legitimate and licensed online casino?', 'Yes, 20bet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 20bet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 20bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 20bet Casino?', 'Signing up at 20bet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 20bet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 20bet Casino offer to new players?', '20bet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 20bet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 20bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 20bet Casino?', '20bet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 20bet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 20bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 20bet Casino?', 'Withdrawal times at 20bet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 20bet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 20bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 20bet Casino?', '20bet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 20bet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Lilibet Casino (lilibet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'lilibet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Lilibet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Lilibet Casino a legitimate and licensed online casino?', 'Yes, Lilibet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Lilibet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Lilibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Lilibet Casino?', 'Signing up at Lilibet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Lilibet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Lilibet Casino offer to new players?', 'Lilibet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Lilibet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Lilibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Lilibet Casino?', 'Lilibet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Lilibet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Lilibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Lilibet Casino?', 'Withdrawal times at Lilibet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Lilibet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Lilibet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Lilibet Casino?', 'Lilibet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Lilibet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Sons of Slots Casino (sons-of-slots-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'sons-of-slots-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Sons of Slots Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Sons of Slots Casino a legitimate and licensed online casino?', 'Yes, Sons of Slots Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Sons of Slots Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Sons of Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Sons of Slots Casino?', 'Signing up at Sons of Slots Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Sons of Slots Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Sons of Slots Casino offer to new players?', 'Sons of Slots Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Sons of Slots Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Sons of Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Sons of Slots Casino?', 'Sons of Slots Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Sons of Slots Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Sons of Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Sons of Slots Casino?', 'Withdrawal times at Sons of Slots Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Sons of Slots Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Sons of Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Sons of Slots Casino?', 'Sons of Slots Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Sons of Slots Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Betsamigo Casino (betsamigo-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'betsamigo-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Betsamigo Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Betsamigo Casino a legitimate and licensed online casino?', 'Yes, Betsamigo Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Betsamigo Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Betsamigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Betsamigo Casino?', 'Signing up at Betsamigo Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Betsamigo Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Betsamigo Casino offer to new players?', 'Betsamigo Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Betsamigo Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Betsamigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Betsamigo Casino?', 'Betsamigo Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Betsamigo Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Betsamigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Betsamigo Casino?', 'Withdrawal times at Betsamigo Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Betsamigo Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Betsamigo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Betsamigo Casino?', 'Betsamigo Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Betsamigo Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Impressario Casino (impressario-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'impressario-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Impressario Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Impressario Casino a legitimate and licensed online casino?', 'Yes, Impressario Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Impressario Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Impressario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Impressario Casino?', 'Signing up at Impressario Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Impressario Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Impressario Casino offer to new players?', 'Impressario Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Impressario Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Impressario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Impressario Casino?', 'Impressario Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Impressario Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Impressario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Impressario Casino?', 'Withdrawal times at Impressario Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Impressario Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Impressario Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Impressario Casino?', 'Impressario Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Impressario Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Windetta Casino (windetta-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'windetta-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Windetta Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Windetta Casino a legitimate and licensed online casino?', 'Yes, Windetta Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Windetta Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Windetta Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Windetta Casino?', 'Signing up at Windetta Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Windetta Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Windetta Casino offer to new players?', 'Windetta Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Windetta Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Windetta Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Windetta Casino?', 'Windetta Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Windetta Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Windetta Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Windetta Casino?', 'Withdrawal times at Windetta Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Windetta Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Windetta Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Windetta Casino?', 'Windetta Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Windetta Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SpinsBro Casino (spinsbro-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinsbro-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SpinsBro Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SpinsBro Casino a legitimate and licensed online casino?', 'Yes, SpinsBro Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SpinsBro Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SpinsBro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SpinsBro Casino?', 'Signing up at SpinsBro Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SpinsBro Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SpinsBro Casino offer to new players?', 'SpinsBro Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SpinsBro Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SpinsBro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SpinsBro Casino?', 'SpinsBro Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SpinsBro Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SpinsBro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SpinsBro Casino?', 'Withdrawal times at SpinsBro Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SpinsBro Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SpinsBro Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SpinsBro Casino?', 'SpinsBro Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SpinsBro Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Galactic Bets Casino (galactic-bets-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'galactic-bets-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Galactic Bets Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Galactic Bets Casino a legitimate and licensed online casino?', 'Yes, Galactic Bets Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Galactic Bets Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Galactic Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Galactic Bets Casino?', 'Signing up at Galactic Bets Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Galactic Bets Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Galactic Bets Casino offer to new players?', 'Galactic Bets Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Galactic Bets Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Galactic Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Galactic Bets Casino?', 'Galactic Bets Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Galactic Bets Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Galactic Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Galactic Bets Casino?', 'Withdrawal times at Galactic Bets Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Galactic Bets Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Galactic Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Galactic Bets Casino?', 'Galactic Bets Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Galactic Bets Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Jet4bet Casino (jet4bet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'jet4bet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Jet4bet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Jet4bet Casino a legitimate and licensed online casino?', 'Yes, Jet4bet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Jet4bet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Jet4bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Jet4bet Casino?', 'Signing up at Jet4bet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Jet4bet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Jet4bet Casino offer to new players?', 'Jet4bet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Jet4bet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Jet4bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Jet4bet Casino?', 'Jet4bet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Jet4bet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Jet4bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Jet4bet Casino?', 'Withdrawal times at Jet4bet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Jet4bet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Jet4bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Jet4bet Casino?', 'Jet4bet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Jet4bet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- K8.io Casino (k8io-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'k8io-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is K8.io Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is K8.io Casino a legitimate and licensed online casino?', 'Yes, K8.io Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the K8.io Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at K8.io Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at K8.io Casino?', 'Signing up at K8.io Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does K8.io Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does K8.io Casino offer to new players?', 'K8.io Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the K8.io Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at K8.io Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at K8.io Casino?', 'K8.io Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the K8.io Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at K8.io Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at K8.io Casino?', 'Withdrawal times at K8.io Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that K8.io Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at K8.io Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at K8.io Casino?', 'K8.io Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the K8.io Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Slotsngo Casino (slotsngo-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'slotsngo-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Slotsngo Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Slotsngo Casino a legitimate and licensed online casino?', 'Yes, Slotsngo Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Slotsngo Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Slotsngo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Slotsngo Casino?', 'Signing up at Slotsngo Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Slotsngo Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Slotsngo Casino offer to new players?', 'Slotsngo Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Slotsngo Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Slotsngo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Slotsngo Casino?', 'Slotsngo Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Slotsngo Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Slotsngo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Slotsngo Casino?', 'Withdrawal times at Slotsngo Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Slotsngo Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Slotsngo Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Slotsngo Casino?', 'Slotsngo Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Slotsngo Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Stake Casino (stake-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'stake-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Stake Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Stake Casino a legitimate and licensed online casino?', 'Yes, Stake Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Stake Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Stake Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Stake Casino?', 'Signing up at Stake Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Stake Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Stake Casino offer to new players?', 'Stake Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Stake Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Stake Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Stake Casino?', 'Stake Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Stake Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Stake Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Stake Casino?', 'Withdrawal times at Stake Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Stake Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Stake Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Stake Casino?', 'Stake Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Stake Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Xon Bet Casino (xon-bet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'xon-bet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Xon Bet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Xon Bet Casino a legitimate and licensed online casino?', 'Yes, Xon Bet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Xon Bet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Xon Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Xon Bet Casino?', 'Signing up at Xon Bet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Xon Bet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Xon Bet Casino offer to new players?', 'Xon Bet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Xon Bet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Xon Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Xon Bet Casino?', 'Xon Bet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Xon Bet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Xon Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Xon Bet Casino?', 'Withdrawal times at Xon Bet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Xon Bet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Xon Bet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Xon Bet Casino?', 'Xon Bet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Xon Bet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Fast Slots Casino (fast-slots-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'fast-slots-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Fast Slots Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Fast Slots Casino a legitimate and licensed online casino?', 'Yes, Fast Slots Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Fast Slots Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Fast Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Fast Slots Casino?', 'Signing up at Fast Slots Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Fast Slots Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Fast Slots Casino offer to new players?', 'Fast Slots Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Fast Slots Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Fast Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Fast Slots Casino?', 'Fast Slots Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Fast Slots Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Fast Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Fast Slots Casino?', 'Withdrawal times at Fast Slots Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Fast Slots Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Fast Slots Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Fast Slots Casino?', 'Fast Slots Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Fast Slots Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- StoneVegas Casino (stonevegas-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'stonevegas-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is StoneVegas Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is StoneVegas Casino a legitimate and licensed online casino?', 'Yes, StoneVegas Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the StoneVegas Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at StoneVegas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at StoneVegas Casino?', 'Signing up at StoneVegas Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does StoneVegas Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does StoneVegas Casino offer to new players?', 'StoneVegas Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the StoneVegas Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at StoneVegas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at StoneVegas Casino?', 'StoneVegas Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the StoneVegas Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at StoneVegas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at StoneVegas Casino?', 'Withdrawal times at StoneVegas Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that StoneVegas Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at StoneVegas Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at StoneVegas Casino?', 'StoneVegas Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the StoneVegas Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Odds96 Casino (odds96-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'odds96-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Odds96 Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Odds96 Casino a legitimate and licensed online casino?', 'Yes, Odds96 Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Odds96 Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Odds96 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Odds96 Casino?', 'Signing up at Odds96 Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Odds96 Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Odds96 Casino offer to new players?', 'Odds96 Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Odds96 Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Odds96 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Odds96 Casino?', 'Odds96 Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Odds96 Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Odds96 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Odds96 Casino?', 'Withdrawal times at Odds96 Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Odds96 Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Odds96 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Odds96 Casino?', 'Odds96 Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Odds96 Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Moana Casino (moana-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'moana-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Moana Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Moana Casino a legitimate and licensed online casino?', 'Yes, Moana Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Moana Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Moana Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Moana Casino?', 'Signing up at Moana Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Moana Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Moana Casino offer to new players?', 'Moana Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Moana Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Moana Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Moana Casino?', 'Moana Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Moana Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Moana Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Moana Casino?', 'Withdrawal times at Moana Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Moana Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Moana Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Moana Casino?', 'Moana Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Moana Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Tsars Casino (tsars-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'tsars-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Tsars Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Tsars Casino a legitimate and licensed online casino?', 'Yes, Tsars Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Tsars Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Tsars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Tsars Casino?', 'Signing up at Tsars Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Tsars Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Tsars Casino offer to new players?', 'Tsars Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Tsars Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Tsars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Tsars Casino?', 'Tsars Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Tsars Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Tsars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Tsars Casino?', 'Withdrawal times at Tsars Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Tsars Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Tsars Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Tsars Casino?', 'Tsars Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Tsars Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- BitStarz Casino (bitstarz-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'bitstarz-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is BitStarz Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is BitStarz Casino a legitimate and licensed online casino?', 'Yes, BitStarz Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the BitStarz Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at BitStarz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at BitStarz Casino?', 'Signing up at BitStarz Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does BitStarz Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does BitStarz Casino offer to new players?', 'BitStarz Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the BitStarz Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at BitStarz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at BitStarz Casino?', 'BitStarz Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the BitStarz Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at BitStarz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at BitStarz Casino?', 'Withdrawal times at BitStarz Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that BitStarz Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at BitStarz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at BitStarz Casino?', 'BitStarz Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the BitStarz Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Zotabet Casino (zotabet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'zotabet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Zotabet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Zotabet Casino a legitimate and licensed online casino?', 'Yes, Zotabet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Zotabet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Zotabet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Zotabet Casino?', 'Signing up at Zotabet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Zotabet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Zotabet Casino offer to new players?', 'Zotabet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Zotabet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Zotabet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Zotabet Casino?', 'Zotabet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Zotabet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Zotabet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Zotabet Casino?', 'Withdrawal times at Zotabet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Zotabet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Zotabet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Zotabet Casino?', 'Zotabet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Zotabet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- PuppyBet Casino (puppybet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'puppybet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is PuppyBet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is PuppyBet Casino a legitimate and licensed online casino?', 'Yes, PuppyBet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the PuppyBet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at PuppyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at PuppyBet Casino?', 'Signing up at PuppyBet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does PuppyBet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does PuppyBet Casino offer to new players?', 'PuppyBet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the PuppyBet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at PuppyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at PuppyBet Casino?', 'PuppyBet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the PuppyBet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at PuppyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at PuppyBet Casino?', 'Withdrawal times at PuppyBet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that PuppyBet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at PuppyBet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at PuppyBet Casino?', 'PuppyBet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the PuppyBet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Rise of Bets Casino (rise-of-bets-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'rise-of-bets-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Rise of Bets Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Rise of Bets Casino a legitimate and licensed online casino?', 'Yes, Rise of Bets Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Rise of Bets Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Rise of Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Rise of Bets Casino?', 'Signing up at Rise of Bets Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Rise of Bets Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Rise of Bets Casino offer to new players?', 'Rise of Bets Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Rise of Bets Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Rise of Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Rise of Bets Casino?', 'Rise of Bets Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Rise of Bets Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Rise of Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Rise of Bets Casino?', 'Withdrawal times at Rise of Bets Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Rise of Bets Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Rise of Bets Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Rise of Bets Casino?', 'Rise of Bets Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Rise of Bets Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Krundi Casino (krundi-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'krundi-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Krundi Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Krundi Casino a legitimate and licensed online casino?', 'Yes, Krundi Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Krundi Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Krundi Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Krundi Casino?', 'Signing up at Krundi Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Krundi Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Krundi Casino offer to new players?', 'Krundi Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Krundi Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Krundi Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Krundi Casino?', 'Krundi Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Krundi Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Krundi Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Krundi Casino?', 'Withdrawal times at Krundi Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Krundi Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Krundi Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Krundi Casino?', 'Krundi Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Krundi Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- SpinDay Casino (spinday-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinday-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is SpinDay Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is SpinDay Casino a legitimate and licensed online casino?', 'Yes, SpinDay Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the SpinDay Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at SpinDay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at SpinDay Casino?', 'Signing up at SpinDay Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does SpinDay Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does SpinDay Casino offer to new players?', 'SpinDay Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the SpinDay Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at SpinDay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at SpinDay Casino?', 'SpinDay Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the SpinDay Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at SpinDay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at SpinDay Casino?', 'Withdrawal times at SpinDay Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that SpinDay Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at SpinDay Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at SpinDay Casino?', 'SpinDay Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the SpinDay Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- BK8 Casino (bk8-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'bk8-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is BK8 Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is BK8 Casino a legitimate and licensed online casino?', 'Yes, BK8 Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the BK8 Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at BK8 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at BK8 Casino?', 'Signing up at BK8 Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does BK8 Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does BK8 Casino offer to new players?', 'BK8 Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the BK8 Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at BK8 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at BK8 Casino?', 'BK8 Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the BK8 Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at BK8 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at BK8 Casino?', 'Withdrawal times at BK8 Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that BK8 Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at BK8 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at BK8 Casino?', 'BK8 Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the BK8 Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Pickwin Casino (pickwin-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'pickwin-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Pickwin Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Pickwin Casino a legitimate and licensed online casino?', 'Yes, Pickwin Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Pickwin Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Pickwin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Pickwin Casino?', 'Signing up at Pickwin Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Pickwin Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Pickwin Casino offer to new players?', 'Pickwin Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Pickwin Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Pickwin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Pickwin Casino?', 'Pickwin Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Pickwin Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Pickwin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Pickwin Casino?', 'Withdrawal times at Pickwin Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Pickwin Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Pickwin Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Pickwin Casino?', 'Pickwin Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Pickwin Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Casiny Casino (casiny-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'casiny-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Casiny Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Casiny Casino a legitimate and licensed online casino?', 'Yes, Casiny Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Casiny Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Casiny Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Casiny Casino?', 'Signing up at Casiny Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Casiny Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Casiny Casino offer to new players?', 'Casiny Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Casiny Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Casiny Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Casiny Casino?', 'Casiny Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Casiny Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Casiny Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Casiny Casino?', 'Withdrawal times at Casiny Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Casiny Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Casiny Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Casiny Casino?', 'Casiny Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Casiny Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Spinit Casino (spinit-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinit-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Spinit Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Spinit Casino a legitimate and licensed online casino?', 'Yes, Spinit Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Spinit Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Spinit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Spinit Casino?', 'Signing up at Spinit Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Spinit Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Spinit Casino offer to new players?', 'Spinit Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Spinit Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Spinit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Spinit Casino?', 'Spinit Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Spinit Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Spinit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Spinit Casino?', 'Withdrawal times at Spinit Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Spinit Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Spinit Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Spinit Casino?', 'Spinit Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Spinit Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Spinrollz Casino (spinrollz-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'spinrollz-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Spinrollz Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Spinrollz Casino a legitimate and licensed online casino?', 'Yes, Spinrollz Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Spinrollz Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Spinrollz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Spinrollz Casino?', 'Signing up at Spinrollz Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Spinrollz Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Spinrollz Casino offer to new players?', 'Spinrollz Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Spinrollz Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Spinrollz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Spinrollz Casino?', 'Spinrollz Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Spinrollz Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Spinrollz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Spinrollz Casino?', 'Withdrawal times at Spinrollz Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Spinrollz Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Spinrollz Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Spinrollz Casino?', 'Spinrollz Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Spinrollz Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- Zizobet Casino (zizobet-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = 'zizobet-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is Zizobet Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is Zizobet Casino a legitimate and licensed online casino?', 'Yes, Zizobet Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the Zizobet Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at Zizobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at Zizobet Casino?', 'Signing up at Zizobet Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does Zizobet Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does Zizobet Casino offer to new players?', 'Zizobet Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the Zizobet Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at Zizobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at Zizobet Casino?', 'Zizobet Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the Zizobet Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at Zizobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at Zizobet Casino?', 'Withdrawal times at Zizobet Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that Zizobet Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at Zizobet Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at Zizobet Casino?', 'Zizobet Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the Zizobet Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  -- 888 Casino (888-casino)
  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '888-casino' LIMIT 1;
  IF casino_uuid IS NOT NULL THEN
    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;
    IF existing_count < 6 THEN
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'Is 888 Casino a legitimate and licensed online casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'Is 888 Casino a legitimate and licensed online casino?', 'Yes, 888 Casino is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the 888 Casino website for the most up-to-date licensing details.', 1);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How do I create an account at 888 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How do I create an account at 888 Casino?', 'Signing up at 888 Casino is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.', 2);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What welcome bonus does 888 Casino offer to new players?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What welcome bonus does 888 Casino offer to new players?', '888 Casino offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the 888 Casino promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.', 3);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What payment methods are accepted at 888 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What payment methods are accepted at 888 Casino?', '888 Casino supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the 888 Casino cashier section for the full list of available options in your region.', 4);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'How long do withdrawals take at 888 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'How long do withdrawals take at 888 Casino?', 'Withdrawal times at 888 Casino depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that 888 Casino may require identity verification (KYC) before processing your first withdrawal, which could add additional time.', 5);
      END IF;
      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = 'What games are available at 888 Casino?') THEN
        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)
        VALUES (gen_random_uuid(), casino_uuid, 'What games are available at 888 Casino?', '888 Casino offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the 888 Casino platform to find your preferred titles quickly.', 6);
      END IF;
    END IF;
  END IF;

  RAISE NOTICE 'FAQ seeding complete for all 132 casinos.';
END $$;
