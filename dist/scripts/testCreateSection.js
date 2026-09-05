"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const prisma_1 = require("../prisma");
async function testCreate() {
    try {
        const title = "Welcome Bonuses";
        const slug = "welcome-bonuses-test";
        const casinos = await prisma_1.prisma.casino.findMany({ take: 2 });
        console.log("Casinos found:", casinos.map(c => ({ id: c.id, name: c.name })));
        if (casinos.length === 0) {
            console.log("No casinos found!");
            return;
        }
        const items = casinos.map((c, idx) => ({
            casino_id: c.id,
            custom_title: `${c.name} 100% Welcome Bonus up to $1,000`,
            bonus_code: "WELCOME200",
            wagering_requirement: "30x Bonus",
            min_deposit: "$20",
            exclusive: false,
            highlight_badge: "Featured Offer",
            claim_url: null,
            sort_order: idx,
        }));
        const section = await prisma_1.prisma.bonusSection.create({
            data: {
                title,
                slug,
                badge_text: "Most Popular",
                description: "testing",
                icon_name: "Gift",
                sort_order: 0,
                status: "active",
                items: {
                    create: items,
                },
            },
            include: {
                items: {
                    include: {
                        casino: true,
                    },
                },
            },
        });
        console.log("Section created successfully:", section.id, section.title, "Items:", section.items.length);
    }
    catch (err) {
        console.error("Test create failed:", err);
    }
    finally {
        await prisma_1.prisma.$disconnect();
    }
}
testCreate();
//# sourceMappingURL=testCreateSection.js.map