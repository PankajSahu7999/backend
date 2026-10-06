import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

interface SeedFaq {
  category: string;
  question: string;
  answer: string;
  sort_order: number;
}

const CATEGORY_FAQS: SeedFaq[] = [
  // ================= HOME FAQS =================
  {
    category: 'home',
    question: 'What is Casino Reviews Book?',
    answer:
      'Casino Reviews Book is an independent iGaming research and review portal. We conduct hands-on testing of online casinos, audit payout speeds with real deposits, inspect licensing integrity, and dissect promotional fine print to help players gamble safely.',
    sort_order: 1,
  },
  {
    category: 'home',
    question: 'How do you review and audit online casinos?',
    answer:
      'Every brand undergoes our 6-step testing pipeline: licensing and jurisdiction verification, real-money deposit testing, bonus rollover audits, mobile UI responsiveness benchmarking, withdrawal processing verification, and 24/7 customer support responsiveness tests.',
    sort_order: 2,
  },
  {
    category: 'home',
    question: 'Can casino operators pay for higher ratings or placements?',
    answer:
      'No. While commercial affiliate partnerships help fund our testing operations, commercial terms never influence review scores or tier placement. All operator ratings are dictated strictly by our objective audit criteria and editorial standards.',
    sort_order: 3,
  },
  {
    category: 'home',
    question: 'How do you verify casino withdrawal speeds?',
    answer:
      'Our analysts deposit real funds and request cashouts via e-wallets, crypto networks, and credit cards. We track the exact time from request approval to funds arriving in the destination wallet or account.',
    sort_order: 4,
  },
  {
    category: 'home',
    question: 'Are online casinos legal in my jurisdiction?',
    answer:
      'Legality and licensing regulations depend entirely on your country and local province or state. Always verify that online gambling is authorized in your region and that the operator holds a valid license (such as UKGC, MGA, or Curacao eGaming).',
    sort_order: 5,
  },
  {
    category: 'home',
    question: 'What should I do if I encounter a dispute with a casino?',
    answer:
      'First, contact the casino customer support team with transaction IDs and timestamps. If unresolved, reach out to the relevant licensing regulator or an alternative dispute resolution (ADR) body such as eCOGRA or IBAS.',
    sort_order: 6,
  },

  // ================= ONLINE CASINO FAQS =================
  {
    category: 'online-casino',
    question: 'How do I choose the best online casino for real money?',
    answer:
      'Look for verified regulatory licenses (MGA, UKGC, Curacao), secure SSL encryption, trusted payment methods with low fees, transparent wagering terms under 40x, and games from certified software studios like NetEnt, Pragmatic Play, and Evolution.',
    sort_order: 1,
  },
  {
    category: 'online-casino',
    question: 'What gaming licenses should I look for before signing up?',
    answer:
      'Top-tier regulatory bodies include the Malta Gaming Authority (MGA) and the UK Gambling Commission (UKGC). Curacao eGaming licenses are also common, particularly for crypto-friendly international casinos. Always check the active license badge in the casino footer.',
    sort_order: 2,
  },
  {
    category: 'online-casino',
    question: 'Are online casino games fair and not rigged?',
    answer:
      'Legitimate, licensed casinos use certified Random Number Generators (RNG) audited by independent testing agencies like eCOGRA, iTech Labs, and GLI. These audits ensure game outcomes cannot be altered by either the casino or the player.',
    sort_order: 3,
  },
  {
    category: 'online-casino',
    question: 'What is the average Return to Player (RTP) at online casinos?',
    answer:
      'Online slots typically have an RTP between 95% and 97%. Table games like Blackjack (up to 99.5% with basic strategy) and European Roulette (97.3%) provide the highest statistical payout returns.',
    sort_order: 4,
  },
  {
    category: 'online-casino',
    question: 'What documents are required for KYC account verification?',
    answer:
      'Standard KYC (Know Your Customer) requires a government-issued photo ID (passport or driver’s license), proof of address dated within the last 3 months (utility bill or bank statement), and confirmation of payment ownership.',
    sort_order: 5,
  },
  {
    category: 'online-casino',
    question: 'How long do payouts take at top-rated online casinos?',
    answer:
      'Crypto and e-wallet cashouts typically take between 0 and 24 hours once verified. Traditional bank wires and credit card withdrawals generally take between 2 and 5 business days depending on banking corridors.',
    sort_order: 6,
  },

  // ================= CRYPTO CASINOS FAQS =================
  {
    category: 'crypto-casinos',
    question: 'What are crypto casinos and how do they work?',
    answer:
      'Crypto casinos are online gambling platforms that accept cryptocurrencies like Bitcoin (BTC), Ethereum (ETH), and USDT for deposits and withdrawals, offering faster transactions, lower fees, and enhanced privacy.',
    sort_order: 1,
  },
  {
    category: 'crypto-casinos',
    question: 'What does "Provably Fair" mean in crypto gambling?',
    answer:
      'Provably Fair is a cryptographic algorithm that allows players to independently verify that every game outcome was random and unmanipulated using client seeds, server seeds, and public cryptographic hashes.',
    sort_order: 2,
  },
  {
    category: 'crypto-casinos',
    question: 'Are crypto casino payouts really instant?',
    answer:
      'Yes. Once the automated cashout is processed by the casino system, funds transfer across the blockchain in minutes, limited only by network block confirmations.',
    sort_order: 3,
  },
  {
    category: 'crypto-casinos',
    question: 'Do crypto casinos require KYC verification?',
    answer:
      'Many crypto casinos offer anonymous gameplay with only an email and wallet address for smaller amounts. However, regulated crypto casinos may request KYC for unusually large withdrawals or suspicious activity.',
    sort_order: 4,
  },

  // ================= FAST WITHDRAWAL CASINOS FAQS =================
  {
    category: 'fast-withdrawal-casinos',
    question: 'Which payment methods offer instant casino withdrawals?',
    answer:
      'Cryptocurrencies (BTC, USDT, LTC) and modern e-wallets (Skrill, Neteller, PayPal, MuchBetter) are the fastest payout channels, routinely clearing within minutes to under 2 hours.',
    sort_order: 1,
  },
  {
    category: 'fast-withdrawal-casinos',
    question: 'Why do some casino withdrawals take longer than expected?',
    answer:
      'Delays are usually caused by uncompleted KYC verification, active bonus wagering requirements that have not been fulfilled, or manual security checks for first-time large cashouts.',
    sort_order: 2,
  },
  {
    category: 'fast-withdrawal-casinos',
    question: 'Do fast withdrawal casinos process payouts on weekends?',
    answer:
      'Top-tier fast withdrawal casinos with automated payment systems process requests 24/7, including Saturdays and Sundays. However, traditional bank wire processing is paused until business days.',
    sort_order: 3,
  },
  {
    category: 'fast-withdrawal-casinos',
    question: 'How can I ensure my casino withdrawal is processed as fast as possible?',
    answer:
      'Complete your identity verification (KYC) immediately upon registration, use the same deposit and withdrawal method, avoid breaking bonus terms, and request payouts via crypto or e-wallets.',
    sort_order: 4,
  },

  // ================= LIVE CASINOS FAQS =================
  {
    category: 'live-casinos',
    question: 'How do live dealer casino games work?',
    answer:
      'Live dealer games stream high-definition video of professional human dealers from specialized studios in real time. Optical recognition and RFID chips track card and roulette results directly into the betting interface.',
    sort_order: 1,
  },
  {
    category: 'live-casinos',
    question: 'Can live dealers or other players see me through my camera?',
    answer:
      'No. The video stream is strictly one-way from the dealer studio to your device. Dealers only see incoming bets and player chat text messages.',
    sort_order: 2,
  },
  {
    category: 'live-casinos',
    question: 'Can I play live dealer games on mobile phones?',
    answer:
      'Yes. Top live casino providers like Evolution and Pragmatic Play Live design their studios and user interfaces to be fully touch-responsive in portrait and landscape modes on iOS and Android.',
    sort_order: 3,
  },

  // ================= MOBILE CASINOS FAQS =================
  {
    category: 'mobile-casinos',
    question: 'Can I play real money casino games on my smartphone?',
    answer:
      'Yes. Modern online casinos are built using HTML5, enabling smooth gameplay across iOS and Android browsers without requiring separate app store downloads.',
    sort_order: 1,
  },
  {
    category: 'mobile-casinos',
    question: 'Do mobile casinos offer the same games and bonuses as desktop sites?',
    answer:
      'Yes. All modern game providers develop mobile-first versions with identical RTPs, payout structures, bonus features, and deposit promotion compatibility.',
    sort_order: 2,
  },

  // ================= NEWEST CASINOS FAQS =================
  {
    category: 'newest-casinos',
    question: 'Are newly launched online casinos safe to join?',
    answer:
      'New casinos are safe provided they hold verified regulatory licenses and are operated by reputable iGaming management groups with clean financial histories.',
    sort_order: 1,
  },
  {
    category: 'newest-casinos',
    question: 'What are the benefits of playing at new casino sites?',
    answer:
      'New casinos frequently offer competitive welcome bonuses with lower wagering terms, state-of-the-art gamification features, modern mobile designs, and wider crypto payment integrations to attract players.',
    sort_order: 2,
  },

  // ================= CASINO BONUSES FAQS =================
  {
    category: 'casino-bonuses',
    question: 'What is a casino welcome bonus and how does it work?',
    answer:
      'A welcome bonus is an incentive given to new depositors, typically matching a percentage of the initial deposit (e.g., 100% up to $500) and often bundled with free spins.',
    sort_order: 1,
  },
  {
    category: 'casino-bonuses',
    question: 'What are bonus wagering requirements?',
    answer:
      'Wagering (or rollover) requirements dictate how many times bonus funds must be staked before winnings can be withdrawn. For instance, a 30x wagering requirement on a $100 bonus requires $3,000 in total bets.',
    sort_order: 2,
  },
  {
    category: 'casino-bonuses',
    question: 'What is a no deposit casino bonus?',
    answer:
      'A no deposit bonus gives players free credits or free spins simply for creating and verifying a new account, allowing real money gameplay without committing personal funds.',
    sort_order: 3,
  },
  {
    category: 'casino-bonuses',
    question: 'Why do table games contribute less to bonus wagering than slots?',
    answer:
      'Table games like Blackjack and Baccarat have a very low house edge (under 1-2%). Casinos limit their contribution (often 5% to 10%) to prevent low-risk strategy exploits.',
    sort_order: 4,
  },

  // ================= SLOTS FAQS =================
  {
    category: 'slots',
    question: 'What is the difference between high and low volatility slots?',
    answer:
      'Low volatility slots pay out frequent smaller wins, ideal for extending playtime. High volatility slots hit winning combinations less frequently, but offer larger maximum jackpot payouts.',
    sort_order: 1,
  },
  {
    category: 'slots',
    question: 'What is RTP (Return to Player) in online slots?',
    answer:
      'RTP represents the statistical percentage of all wagered money that a slot game returns to players over millions of spins. A 96.5% RTP indicates an average return of $96.50 per $100 staked.',
    sort_order: 2,
  },
  {
    category: 'slots',
    question: 'What are progressive jackpot slots?',
    answer:
      'Progressive jackpot slots pool a small percentage of every bet across a global network of casinos into a central jackpot that grows continuously until a lucky player triggers the grand prize.',
    sort_order: 3,
  },

  // ================= CASINO GAMES FAQS =================
  {
    category: 'casino-games',
    question: 'Which casino game offers the best odds for players?',
    answer:
      'Single-deck Blackjack played with optimal basic strategy offers the lowest house edge (around 0.5%), followed by Baccarat banker bets (1.06%) and European Roulette (2.7%).',
    sort_order: 1,
  },
  {
    category: 'casino-games',
    question: 'What is the difference between European and American Roulette?',
    answer:
      'European Roulette has a single zero pocket (37 pockets total) with a 2.70% house edge. American Roulette has both a single zero and a double zero (38 pockets), increasing the house edge to 5.26%.',
    sort_order: 2,
  },

  // ================= SPORTS BETTING FAQS =================
  {
    category: 'sports-betting',
    question: 'How do sports betting odds work?',
    answer:
      'Odds reflect the implied probability of an outcome and dictate potential payout. For decimal odds of 2.50, a $100 bet returns $250 ($150 profit + $100 original stake).',
    sort_order: 1,
  },
  {
    category: 'sports-betting',
    question: 'What is the Cash Out feature in sports betting?',
    answer:
      'Cash Out allows bettors to settle their active wager before the event concludes, locking in guaranteed profit or minimizing losses as match circumstances change.',
    sort_order: 2,
  },
];

async function main() {
  console.log('🌱 Starting category FAQs seeding...');

  let createdCount = 0;
  let updatedCount = 0;

  for (const item of CATEGORY_FAQS) {
    const existing = await prisma.faq.findFirst({
      where: {
        category: {
          equals: item.category,
          mode: 'insensitive',
        },
        question: {
          equals: item.question,
          mode: 'insensitive',
        },
      },
    });

    if (existing) {
      await prisma.faq.update({
        where: { id: existing.id },
        data: {
          answer: item.answer,
          sort_order: item.sort_order,
          status: true,
        },
      });
      updatedCount++;
    } else {
      await prisma.faq.create({
        data: {
          category: item.category,
          question: item.question,
          answer: item.answer,
          sort_order: item.sort_order,
          status: true,
        },
      });
      createdCount++;
    }
  }

  console.log(`✅ Category FAQs Seeded successfully!`);
  console.log(`   - Created: ${createdCount}`);
  console.log(`   - Updated: ${updatedCount}`);
  console.log(`   - Total in seed list: ${CATEGORY_FAQS.length}`);
}

main()
  .catch((e) => {
    console.error('❌ Error seeding category FAQs:', e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
