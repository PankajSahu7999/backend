/**
 * Generate seed-casino-faqs.sql using EXACT slugs from live database
 * Run: node prisma/generate-faq-sql-exact.js > prisma/seed-casino-faqs.sql
 */

// All 132 casinos with EXACT name + slug from live DB
const casinos = [
  { name: 'LokiCasino', slug: 'lokicasino' },
  { name: 'Rolletto Casino', slug: 'rolletto-casino' },
  { name: 'Party Spinz Casino', slug: 'party-spinz-casino' },
  { name: 'SpinGrande Casino', slug: 'spingrande-casino' },
  { name: 'HunnyPlay Casino', slug: 'hunnyplay-casino' },
  { name: 'NeedForSpin Casino', slug: 'needforspin-casino' },
  { name: 'Slots Capital Casino', slug: 'slots-capital-casino' },
  { name: '1Red Casino', slug: '1red-casino' },
  { name: '777 Casino', slug: '777-casino' },
  { name: 'Velobet Casino', slug: 'velobet-casino' },
  { name: 'BetWest Casino', slug: 'betwest-casino' },
  { name: 'TheOnlineCasino', slug: 'theonlinecasino' },
  { name: 'Wettigo Casino', slug: 'wettigo-casino' },
  { name: 'Pandido Casino', slug: 'pandido-casino' },
  { name: 'Mega Dice Casino', slug: 'mega-dice-casino' },
  { name: 'Omni Slots Casino', slug: 'omni-slots-casino' },
  { name: 'God of Casino', slug: 'god-of-casino' },
  { name: 'Instant Casino', slug: 'instant-casino' },
  { name: 'Cristal Poker Casino', slug: 'cristal-poker-casino' },
  { name: 'Casino Infinity', slug: 'casino-infinity' },
  { name: 'Spinight Casino', slug: 'spinight-casino' },
  { name: 'Run4Win Casino', slug: 'run-4win-casino' },
  { name: 'Bahigo Casino', slug: 'bahigo-casino' },
  { name: 'SpinBet Casino', slug: 'spinbet-casino' },
  { name: 'VikingLuck Casino', slug: 'vikingluck-casino' },
  { name: 'Realz Casino', slug: 'realz-casino' },
  { name: 'Lucky Creek Casino', slug: 'lucky-creek-casino' },
  { name: 'Midarion Casino', slug: 'midarion-casino' },
  { name: 'FastSlots Casino', slug: 'fastslots-casino' },
  { name: 'Rooli Casino', slug: 'rooli-casino' },
  { name: 'Revolution Casino', slug: 'revolution-casino' },
  { name: 'Osombet Casino', slug: 'osombet-casino' },
  { name: 'Turbo Wins Casino', slug: 'turbo-wins-casino' },
  { name: '2UP Casino', slug: '2up-casino' },
  { name: 'SpinBit Casino', slug: 'spinbit-casino' },
  { name: 'Spinch Casino', slug: 'spinch-casino' },
  { name: 'RedCherry Casino', slug: 'redcherry-casino' },
  { name: 'BC GAME', slug: 'bc-game' },
  { name: 'Rainbet Casino', slug: 'rainbet-casino' },
  { name: 'Miami Club Casino', slug: 'miami-club-casino' },
  { name: 'WildWinz Casino', slug: 'wildwinz-casino' },
  { name: 'SlotNeo Casino', slug: 'slotneo-casino' },
  { name: 'Vave Casino', slug: 'vave-casino' },
  { name: 'Betwarts Casino', slug: 'betwarts-casino' },
  { name: 'Sloto Cash Casino', slug: 'loki-casino' },
  { name: 'Lucky Hunter Casino', slug: 'lucky-hunter-casino' },
  { name: 'Vox Casino', slug: 'vox-casino' },
  { name: 'Run4Win Casino (2)', slug: 'run4win-casino' },
  { name: 'Retro Bet Casino', slug: 'retro-bet-casino' },
  { name: 'Goldex Casino', slug: 'goldex-casino' },
  { name: 'N1Bet Casino', slug: 'n1bet-casino' },
  { name: 'bitcoincasinovip', slug: 'bitcoincasinovip' },
  { name: 'Vegastars Casino', slug: 'vegastars-casino' },
  { name: 'Shotz Casino', slug: 'shotz-casino' },
  { name: 'Royal Reels Casino', slug: 'royal-reels-casino' },
  { name: 'Casino Friday', slug: 'casino-friday' },
  { name: 'iNetBet Casino', slug: 'inetbet-casino' },
  { name: 'uptownaces', slug: 'uptownaces' },
  { name: '24Bettle Casino', slug: '24bettle-casino' },
  { name: 'Mundoapostas Casino', slug: 'mundoapostas-casino' },
  { name: 'Big5Casino', slug: 'big5casino' },
  { name: 'Red Stag Casino', slug: 'red-stag-casino' },
  { name: 'Regent Play', slug: 'regent-play' },
  { name: 'Gambeta10 Casino', slug: 'gambeta10-casino' },
  { name: 'b-Bets Casino', slug: 'bbets-casino' },
  { name: 'QueenPlay', slug: 'queenplay' },
  { name: 'Vicibet Casino', slug: 'vicibet-casino' },
  { name: 'Casino Sieger', slug: 'casino-sieger' },
  { name: 'Plaza Royal', slug: 'plaza-royal' },
  { name: 'LuckyBull Casino', slug: 'luckybull-casino' },
  { name: 'SlottoJAM Casino', slug: 'slottojam-casino' },
  { name: 'KikoBet Casino', slug: 'kikobet-casino' },
  { name: 'ReloadBet', slug: 'reloadbet' },
  { name: 'LSbet Casino', slug: 'lsbet-casino' },
  { name: 'Rembrandt Casino', slug: 'rembrandt-casino' },
  { name: 'Tournaverse Casino', slug: 'tournaverse-casino' },
  { name: 'Ninlay Casino', slug: 'ninlay-casino' },
  { name: 'TornadoBet', slug: 'tornadobet' },
  { name: 'TonyBet Casino', slug: 'tonybet-casino' },
  { name: 'SvenPlay Casino', slug: 'svenplay-casino' },
  { name: 'Jackbit Casino', slug: 'jackbit-casino' },
  { name: '22bet Casino', slug: '22bet-casino' },
  { name: 'Cazimbo', slug: 'cazimbo' },
  { name: 'Smokace Casino', slug: 'smokace-casino' },
  { name: 'Gomblingo Casino', slug: 'gomblingo-casino' },
  { name: 'Weiss Casino', slug: 'weiss-casino' },
  { name: 'Greenluck', slug: 'greenluck' },
  { name: 'WinLegends Casino', slug: 'winlegends-casino' },
  { name: 'CosmicSlot Casino', slug: 'cosmicslot-casino' },
  { name: 'yoyospins', slug: 'yoyospins' },
  { name: 'Nucleonbet Casino', slug: 'nucleonbet-casino' },
  { name: 'Stelario Casino', slug: 'stelario-casino' },
  { name: 'King Billy Casino', slug: 'king-billy-casino' },
  { name: 'Boho Casino', slug: 'boho-casino' },
  { name: 'Wallacebet Casino', slug: 'wallacebet-casino' },
  { name: 'AllSpins Casino', slug: 'allspins-casino' },
  { name: 'Del Oro Casino', slug: 'del-oro-casino' },
  { name: 'Lapilanders Casino', slug: 'lapilanders-casino' },
  { name: 'Syndicate Casino', slug: 'syndicate-casino' },
  { name: 'Evobet Casino', slug: 'evobet-casino' },
  { name: 'Slots Gallery Casino', slug: 'slots-gallery-casino' },
  { name: '20bet Casino', slug: '20bet-casino' },
  { name: 'Lilibet Casino', slug: 'lilibet-casino' },
  { name: 'Sons of Slots Casino', slug: 'sons-of-slots-casino' },
  { name: 'Betsamigo Casino', slug: 'betsamigo-casino' },
  { name: 'Impressario Casino', slug: 'impressario-casino' },
  { name: 'Windetta Casino', slug: 'windetta-casino' },
  { name: 'SpinsBro Casino', slug: 'spinsbro-casino' },
  { name: 'Galactic Bets Casino', slug: 'galactic-bets-casino' },
  { name: 'Jet4bet Casino', slug: 'jet4bet-casino' },
  { name: 'K8.io Casino', slug: 'k8io-casino' },
  { name: 'Slotsngo Casino', slug: 'slotsngo-casino' },
  { name: 'Stake Casino', slug: 'stake-casino' },
  { name: 'Xon Bet Casino', slug: 'xon-bet-casino' },
  { name: 'Fast Slots Casino', slug: 'fast-slots-casino' },
  { name: 'StoneVegas Casino', slug: 'stonevegas-casino' },
  { name: 'Odds96 Casino', slug: 'odds96-casino' },
  { name: 'Moana Casino', slug: 'moana-casino' },
  { name: 'Tsars Casino', slug: 'tsars-casino' },
  { name: 'BitStarz Casino', slug: 'bitstarz-casino' },
  { name: 'Zotabet Casino', slug: 'zotabet-casino' },
  { name: 'PuppyBet Casino', slug: 'puppybet-casino' },
  { name: 'Rise of Bets Casino', slug: 'rise-of-bets-casino' },
  { name: 'Krundi Casino', slug: 'krundi-casino' },
  { name: 'SpinDay Casino', slug: 'spinday-casino' },
  { name: 'BK8 Casino', slug: 'bk8-casino' },
  { name: 'Pickwin Casino', slug: 'pickwin-casino' },
  { name: 'Casiny Casino', slug: 'casiny-casino' },
  { name: 'Spinit Casino', slug: 'spinit-casino' },
  { name: 'Spinrollz Casino', slug: 'spinrollz-casino' },
  { name: 'Zizobet Casino', slug: 'zizobet-casino' },
  { name: '888 Casino', slug: '888-casino' },
];

function escape(str) {
  return str.replace(/'/g, "''").replace(/\\/g, '\\\\');
}

function getFaqs(name) {
  const n = escape(name);
  return [
    {
      q: `Is ${n} a legitimate and licensed online casino?`,
      a: `Yes, ${n} is a licensed and regulated online casino that operates under international gambling regulations. The platform is audited regularly for fairness and security, and uses SSL encryption to protect all player data and financial transactions. Always check the footer of the ${n} website for the most up-to-date licensing details.`,
    },
    {
      q: `How do I create an account at ${n}?`,
      a: `Signing up at ${n} is quick and easy. Click the "Register" or "Sign Up" button on the homepage, fill in your personal details (name, email, date of birth, and address), choose a secure password, and verify your email address. Once verified, you can log in and start playing. Some jurisdictions may require ID verification (KYC) before making your first withdrawal.`,
    },
    {
      q: `What welcome bonus does ${n} offer to new players?`,
      a: `${n} offers new players a competitive welcome package, which typically includes a match deposit bonus on your first deposit and may include free spins on selected slot games. Bonus amounts and wagering requirements vary, so always read the terms and conditions on the ${n} promotions page before claiming any offer. Existing players can also take advantage of reload bonuses, cashback deals, and loyalty rewards.`,
    },
    {
      q: `What payment methods are accepted at ${n}?`,
      a: `${n} supports a wide range of deposit and withdrawal methods including major credit/debit cards (Visa, Mastercard), e-wallets (Skrill, Neteller, PayPal where available), bank transfers, prepaid cards, and various cryptocurrencies such as Bitcoin, Ethereum, and Litecoin. Minimum deposit and withdrawal amounts, processing times, and fees vary by method. Check the ${n} cashier section for the full list of available options in your region.`,
    },
    {
      q: `How long do withdrawals take at ${n}?`,
      a: `Withdrawal times at ${n} depend on the payment method chosen. E-wallets are typically the fastest, with processing completed within 24 to 48 hours. Credit/debit card withdrawals may take 3 to 5 business days, while bank transfers can take up to 7 business days. Cryptocurrency withdrawals are often processed within a few hours. Note that ${n} may require identity verification (KYC) before processing your first withdrawal, which could add additional time.`,
    },
    {
      q: `What games are available at ${n}?`,
      a: `${n} offers an extensive library of casino games powered by top software providers. You can enjoy hundreds of online slots (classic, video, and progressive jackpot slots), table games (blackjack, roulette, baccarat, poker), and a live casino section featuring real dealers streamed in HD. Many casinos also offer specialty games such as bingo, keno, and scratch cards. Use the game filter or search bar on the ${n} platform to find your preferred titles quickly.`,
    },
  ];
}

const lines = [];
lines.push(`-- Casino FAQ Seeder — All 132 Casinos (Exact Slugs)`);
lines.push(`-- Generated: ${new Date().toISOString()}`);
lines.push(`-- Idempotent: skips casinos already having >= 6 FAQs`);
lines.push(`-- Run: psql -U postgres -d casinolab -f prisma/seed-casino-faqs.sql`);
lines.push(``);
lines.push(`DO $$`);
lines.push(`DECLARE`);
lines.push(`  casino_uuid UUID;`);
lines.push(`  existing_count INTEGER;`);
lines.push(`BEGIN`);

for (const casino of casinos) {
  const { name, slug } = casino;
  const faqs = getFaqs(name);

  lines.push(``);
  lines.push(`  -- ${name} (${slug})`);
  lines.push(`  SELECT id INTO casino_uuid FROM "Casino" WHERE slug = '${escape(slug)}' LIMIT 1;`);
  lines.push(`  IF casino_uuid IS NOT NULL THEN`);
  lines.push(`    SELECT COUNT(*) INTO existing_count FROM "CasinoFaq" WHERE casino_id = casino_uuid;`);
  lines.push(`    IF existing_count < 6 THEN`);

  faqs.forEach((faq, i) => {
    lines.push(`      IF NOT EXISTS (SELECT 1 FROM "CasinoFaq" WHERE casino_id = casino_uuid AND question = '${faq.q}') THEN`);
    lines.push(`        INSERT INTO "CasinoFaq" (id, casino_id, question, answer, sort_order)`);
    lines.push(`        VALUES (gen_random_uuid(), casino_uuid, '${faq.q}', '${faq.a}', ${i + 1});`);
    lines.push(`      END IF;`);
  });

  lines.push(`    END IF;`);
  lines.push(`  END IF;`);
}

lines.push(``);
lines.push(`  RAISE NOTICE 'FAQ seeding complete for all 132 casinos.';`);
lines.push(`END $$;`);

console.log(lines.join('\n'));
