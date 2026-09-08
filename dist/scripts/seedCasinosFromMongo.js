"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
const client_1 = require("@prisma/client");
const fs = __importStar(require("fs"));
const path = __importStar(require("path"));
const prisma = new client_1.PrismaClient();
function slugify(text) {
    return text
        .toLowerCase()
        .trim()
        .replace(/[^\w\s-]/g, '')
        .replace(/[\s_-]+/g, '-')
        .replace(/^-+|-+$/g, '');
}
function cleanWithdrawalTime(raw) {
    if (!raw)
        return null;
    const str = String(raw).trim();
    if (!str)
        return null;
    if (str.length <= 16 && !str.includes(':')) {
        return str.replace(/\bhours?\b/i, 'Hours').replace(/\bdays?\b/i, 'Days');
    }
    const m = str.match(/(?:E-?Wallets?|Wallets?):\s*([0-9-]+\s*(?:hours?|hrs?|days?|mins?|minutes?))/i);
    if (m) {
        const val = m[1].trim().replace(/\bhours?\b/i, 'Hours').replace(/\bdays?\b/i, 'Days');
        return val === '0-1 Hours' || val === '0-0 Hours' ? 'Instant - 1 Hour' : val;
    }
    const generalMatch = str.match(/([0-9-]+\s*(?:hours?|hrs?|days?|mins?|minutes?))/i);
    if (generalMatch) {
        const val = generalMatch[1].trim().replace(/\bhours?\b/i, 'Hours').replace(/\bdays?\b/i, 'Days');
        return val === '0-1 Hours' || val === '0-0 Hours' ? 'Instant - 1 Hour' : val;
    }
    return str.length > 20 ? str.slice(0, 18) + '...' : str;
}
async function loadCasinoData() {
    const possiblePaths = [
        path.join(__dirname, 'mongo_casinos.json'),
        path.join(process.cwd(), 'mongo_casinos.json'),
        path.join(process.cwd(), 'casinos.json'),
        'D:\\casinos.json',
    ];
    for (const filePath of possiblePaths) {
        if (fs.existsSync(filePath)) {
            console.log(`Loading MongoDB casino data from: ${filePath}`);
            const raw = fs.readFileSync(filePath, 'utf8');
            const data = JSON.parse(raw);
            if (Array.isArray(data) && data.length > 0) {
                console.log(`Loaded ${data.length} casino documents.`);
                return data;
            }
        }
    }
    throw new Error('Could not find MongoDB casino JSON export file in any expected path.');
}
async function main() {
    console.log('--- Starting MongoDB to PostgreSQL Casino Seeder ---');
    const casinosData = await loadCasinoData();
    // 1. Preload existing lookup tables for fast in-memory matching
    console.log('Preloading existing lookup tables (Categories, Tags, Countries)...');
    const [existingCategories, existingTags, existingCountries] = await Promise.all([
        prisma.casinoCategory.findMany(),
        prisma.casinoTag.findMany(),
        prisma.country.findMany(),
    ]);
    const categoryMap = new Map(); // slug -> id
    existingCategories.forEach((c) => categoryMap.set(c.slug.toLowerCase(), c.id));
    const tagMap = new Map(); // slug -> id
    existingTags.forEach((t) => tagMap.set(t.slug.toLowerCase(), t.id));
    const countryMap = new Map(); // lowercase name -> id
    existingCountries.forEach((c) => countryMap.set(c.name.toLowerCase().trim(), c.id));
    console.log(`Preloaded: ${categoryMap.size} categories, ${tagMap.size} tags, ${countryMap.size} countries.`);
    let createdCount = 0;
    let updatedCount = 0;
    let errorCount = 0;
    for (let i = 0; i < casinosData.length; i++) {
        const doc = casinosData[i];
        if (!doc.name) {
            console.warn(`[${i + 1}/${casinosData.length}] Skipping casino without name.`);
            continue;
        }
        const slug = (doc.slug ? slugify(doc.slug) : slugify(doc.name)).trim();
        try {
            // Rating formatting (max 9.9 for Decimal(2,1))
            const rawRating = Number(doc.rating);
            const rating = isNaN(rawRating) ? 4.0 : Math.min(Math.max(rawRating, 1.0), 9.9);
            // Established year
            let establishedYear = null;
            if (doc.generalInfo?.established) {
                const match = String(doc.generalInfo.established).match(/\b(19\d\d|20\d\d)\b/);
                if (match)
                    establishedYear = parseInt(match[0], 10);
            }
            // Minimum deposit
            let minDeposit = null;
            if (doc.paymentInfo?.minimumDeposit) {
                const match = String(doc.paymentInfo.minimumDeposit).replace(/,/g, '').match(/\d+(\.\d+)?/);
                if (match)
                    minDeposit = parseFloat(match[0]);
            }
            // Support methods
            const supportMethods = [];
            const supportDesc = doc.customerSupportDescription || '';
            if (/live\s*chat/i.test(supportDesc))
                supportMethods.push('Live Chat 24/7');
            if (/email/i.test(supportDesc))
                supportMethods.push('Email Support');
            if (/telegram/i.test(supportDesc))
                supportMethods.push('Telegram Support');
            if (/phone/i.test(supportDesc))
                supportMethods.push('Phone Support');
            if (supportMethods.length === 0) {
                supportMethods.push('Live Chat 24/7', 'Email Support');
            }
            // Tags array
            const tagsList = Array.isArray(doc.tags)
                ? doc.tags.map((t) => String(t).trim()).filter(Boolean)
                : [];
            // Booleans
            const isCrypto = tagsList.some((t) => /crypto|bitcoin|ethereum/i.test(t));
            const isMobile = tagsList.some((t) => /mobile/i.test(t));
            const isLive = Boolean(doc.games?.liveCasino || tagsList.some((t) => /live/i.test(t)));
            const isSports = Boolean(doc.games?.sportsBetting || tagsList.some((t) => /sports|betting/i.test(t)));
            const isHot = Boolean(doc.hotCasino);
            const isRecommended = Boolean(doc.recommendedByExperts);
            const isCertified = Boolean(doc.certifiedCasino);
            const isResponsible = Boolean(doc.responsibleGaming);
            const isFeatured = Boolean(doc.featured || isHot || isRecommended);
            // Description & Overview
            const shortDesc = doc.generalDescription
                ? doc.generalDescription.substring(0, 500)
                : doc.overview
                    ? doc.overview.substring(0, 250) + '...'
                    : `${doc.name} offers top-rated slots, table games, and safe payment methods.`;
            const overviewText = doc.overview || doc.content || doc.generalDescription || '';
            const websiteUrl = doc.generalInfo?.website || null;
            const affiliateUrl = doc.affiliateUrl || websiteUrl || null;
            const affiliateProgram = doc.generalInfo?.affiliateProgram
                ? String(doc.generalInfo.affiliateProgram).substring(0, 255)
                : null;
            const companyName = doc.generalInfo?.companyName
                ? String(doc.generalInfo.companyName).substring(0, 255)
                : null;
            const licenseAuth = doc.generalInfo?.licences
                ? String(doc.generalInfo.licences).substring(0, 255)
                : null;
            const withdrawalTime = cleanWithdrawalTime(doc.paymentInfo?.withdrawalTime);
            const casinoStatus = doc.enabled === 0 ? 'inactive' : 'active';
            const rankingOrder = typeof doc.order === 'number' ? doc.order : i + 1;
            // 2. Check if casino exists by slug
            const existing = await prisma.casino.findUnique({ where: { slug } });
            const casinoData = {
                name: doc.name.trim(),
                slug,
                logo: doc.logo || null,
                featured_image: doc.featured_image || doc.logo || null,
                website_url: websiteUrl,
                affiliate_url: affiliateUrl,
                affiliate_program_name: affiliateProgram,
                short_description: shortDesc,
                overview: overviewText,
                editor_view: doc.editorView || null,
                rating,
                visits: typeof doc.visits === 'number' ? doc.visits : 0,
                established_year: establishedYear,
                company_name: companyName,
                license_authority: licenseAuth,
                minimum_deposit: minDeposit,
                withdrawal_time: withdrawalTime,
                support_methods: supportMethods,
                status: casinoStatus,
                featured: isFeatured,
                hot_casino: isHot,
                recommended_by_experts: isRecommended,
                certified_casino: isCertified,
                mobile_friendly: isMobile,
                crypto_supported: isCrypto,
                live_casino: isLive,
                sports_betting: isSports,
                responsible_gaming: isResponsible,
                ranking_order: rankingOrder,
                ranking_position: 'middle',
            };
            let casinoRecord;
            if (existing) {
                casinoRecord = await prisma.casino.update({
                    where: { id: existing.id },
                    data: casinoData,
                });
                updatedCount++;
            }
            else {
                casinoRecord = await prisma.casino.create({
                    data: casinoData,
                });
                createdCount++;
            }
            const casinoId = casinoRecord.id;
            // 3. Upsert Bonuses
            await prisma.casinoBonus.deleteMany({ where: { casino_id: casinoId } });
            const bonusCreates = [];
            if (doc.depositBonus && doc.depositBonus.trim() && doc.depositBonus.trim() !== 'N/A') {
                bonusCreates.push({
                    casino_id: casinoId,
                    title: 'Deposit Bonus',
                    type: 'Deposit Bonus',
                    amount: doc.depositBonus.trim(),
                    wagering_requirement: doc.wagering || '40x',
                    sort_order: 0,
                });
            }
            if (doc.welcomeBonus && doc.welcomeBonus.trim() && doc.welcomeBonus.trim() !== 'N/A') {
                bonusCreates.push({
                    casino_id: casinoId,
                    title: 'Welcome Bonus',
                    type: 'Welcome Bonus',
                    amount: doc.welcomeBonus.trim(),
                    wagering_requirement: doc.wagering || '35x',
                    sort_order: 1,
                });
            }
            if (bonusCreates.length > 0) {
                await prisma.casinoBonus.createMany({ data: bonusCreates });
            }
            // 4. Pros & Cons
            await prisma.casinoPros.deleteMany({ where: { casino_id: casinoId } });
            if (Array.isArray(doc.pros) && doc.pros.length > 0) {
                const prosData = doc.pros
                    .map((p) => String(p).trim())
                    .filter(Boolean)
                    .map((content) => ({ casino_id: casinoId, content }));
                if (prosData.length > 0) {
                    await prisma.casinoPros.createMany({ data: prosData });
                }
            }
            await prisma.casinoCons.deleteMany({ where: { casino_id: casinoId } });
            if (Array.isArray(doc.cons) && doc.cons.length > 0) {
                const consData = doc.cons
                    .map((c) => String(c).trim())
                    .filter(Boolean)
                    .map((content) => ({ casino_id: casinoId, content }));
                if (consData.length > 0) {
                    await prisma.casinoCons.createMany({ data: consData });
                }
            }
            // 5. Languages
            if (doc.generalInfo?.languages) {
                await prisma.casinoLanguage.deleteMany({ where: { casino_id: casinoId } });
                const languages = String(doc.generalInfo.languages)
                    .split(/[,/]/)
                    .map((s) => s.trim())
                    .filter(Boolean)
                    .map((language) => ({ casino_id: casinoId, language }));
                if (languages.length > 0) {
                    await prisma.casinoLanguage.createMany({ data: languages });
                }
            }
            // 6. Payment Methods
            if (doc.paymentInfo?.withdrawalMethods) {
                await prisma.casinoPaymentMethod.deleteMany({ where: { casino_id: casinoId } });
                const methods = String(doc.paymentInfo.withdrawalMethods)
                    .split(/[,/]/)
                    .map((s) => s.trim())
                    .filter(Boolean)
                    .map((method_name) => ({ casino_id: casinoId, method_name }));
                if (methods.length > 0) {
                    await prisma.casinoPaymentMethod.createMany({ data: methods });
                }
            }
            // 7. Currencies
            if (doc.paymentInfo?.fees) {
                await prisma.casinoCurrency.deleteMany({ where: { casino_id: casinoId } });
                const currencies = String(doc.paymentInfo.fees)
                    .split(/[,/]/)
                    .map((s) => s.trim())
                    .filter((c) => c.length > 1 && c.length <= 10)
                    .map((currency_code) => ({ casino_id: casinoId, currency_code }));
                if (currencies.length > 0) {
                    await prisma.casinoCurrency.createMany({ data: currencies });
                }
            }
            // 8. Features
            if (Array.isArray(doc.generalInfo?.features) && doc.generalInfo.features.length > 0) {
                await prisma.casinoFeature.deleteMany({ where: { casino_id: casinoId } });
                const features = doc.generalInfo.features
                    .map((f) => String(f).trim())
                    .filter(Boolean)
                    .map((feature) => ({ casino_id: casinoId, feature }));
                if (features.length > 0) {
                    await prisma.casinoFeature.createMany({ data: features });
                }
            }
            // 9. Tags & Tag Mappings
            if (tagsList.length > 0) {
                await prisma.casinoTagMapping.deleteMany({ where: { casino_id: casinoId } });
                const tagMappings = [];
                for (const tagName of tagsList) {
                    const tagSlug = slugify(tagName);
                    let tagId = tagMap.get(tagSlug);
                    if (!tagId) {
                        try {
                            const newTag = await prisma.casinoTag.create({
                                data: { name: tagName, slug: tagSlug },
                            });
                            tagId = newTag.id;
                            tagMap.set(tagSlug, tagId);
                        }
                        catch {
                            const existingTag = await prisma.casinoTag.findUnique({ where: { slug: tagSlug } });
                            if (existingTag) {
                                tagId = existingTag.id;
                                tagMap.set(tagSlug, tagId);
                            }
                        }
                    }
                    if (tagId && !tagMappings.some((m) => m.tag_id === tagId)) {
                        tagMappings.push({ casino_id: casinoId, tag_id: tagId });
                    }
                }
                if (tagMappings.length > 0) {
                    await prisma.casinoTagMapping.createMany({ data: tagMappings, skipDuplicates: true });
                }
            }
            // 10. Available Countries
            if (Array.isArray(doc.availableCountries) && doc.availableCountries.length > 0) {
                await prisma.casinoAvailableCountry.deleteMany({ where: { casino_id: casinoId } });
                const countryMappings = [];
                for (const cName of doc.availableCountries) {
                    const normName = String(cName).toLowerCase().trim();
                    const countryId = countryMap.get(normName);
                    if (countryId && !countryMappings.some((m) => m.country_id === countryId)) {
                        countryMappings.push({ casino_id: casinoId, country_id: countryId });
                    }
                }
                if (countryMappings.length > 0) {
                    await prisma.casinoAvailableCountry.createMany({ data: countryMappings, skipDuplicates: true });
                }
            }
            // 11. Category Mappings (auto-link to existing popular categories)
            await prisma.casinoCategoryMapping.deleteMany({ where: { casino_id: casinoId } });
            const categoryMappings = [];
            // Link to online-casino category by default
            const onlineCatId = categoryMap.get('online-casino');
            if (onlineCatId)
                categoryMappings.push({ casino_id: casinoId, category_id: onlineCatId });
            if (isCrypto) {
                const cryptoCatId = categoryMap.get('crypto-casinos');
                if (cryptoCatId && !categoryMappings.some((c) => c.category_id === cryptoCatId)) {
                    categoryMappings.push({ casino_id: casinoId, category_id: cryptoCatId });
                }
            }
            if (isMobile) {
                const mobileCatId = categoryMap.get('mobile-casinos');
                if (mobileCatId && !categoryMappings.some((c) => c.category_id === mobileCatId)) {
                    categoryMappings.push({ casino_id: casinoId, category_id: mobileCatId });
                }
            }
            if (isCertified) {
                const certCatId = categoryMap.get('certified-casino');
                if (certCatId && !categoryMappings.some((c) => c.category_id === certCatId)) {
                    categoryMappings.push({ casino_id: casinoId, category_id: certCatId });
                }
            }
            if (isHot) {
                const hotCatId = categoryMap.get('newest-casino');
                if (hotCatId && !categoryMappings.some((c) => c.category_id === hotCatId)) {
                    categoryMappings.push({ casino_id: casinoId, category_id: hotCatId });
                }
            }
            if (categoryMappings.length > 0) {
                await prisma.casinoCategoryMapping.createMany({ data: categoryMappings, skipDuplicates: true });
            }
            if ((i + 1) % 20 === 0 || i === casinosData.length - 1) {
                console.log(`[${i + 1}/${casinosData.length}] Processed: ${doc.name} (${slug})`);
            }
        }
        catch (err) {
            console.error(`Error processing casino "${doc.name}" (${slug}):`, err.message);
            errorCount++;
        }
    }
    console.log('\n=== Seeding Summary ===');
    console.log(`Total documents processed: ${casinosData.length}`);
    console.log(`Newly Created: ${createdCount}`);
    console.log(`Updated: ${updatedCount}`);
    console.log(`Errors: ${errorCount}`);
    console.log('--- Seeding Completed Successfully ---');
}
main()
    .catch((e) => {
    console.error('Fatal seeder error:', e);
    process.exit(1);
})
    .finally(async () => {
    await prisma.$disconnect();
});
//# sourceMappingURL=seedCasinosFromMongo.js.map