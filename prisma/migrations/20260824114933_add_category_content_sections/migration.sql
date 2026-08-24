/*
  Warnings:

  - A unique constraint covering the columns `[slug]` on the table `CasinoCategory` will be added. If there are existing duplicate values, this will fail.
  - Made the column `slug` on table `CasinoCategory` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Blog" ADD COLUMN     "sort_order" INTEGER DEFAULT 0;

-- AlterTable
ALTER TABLE "Casino" ADD COLUMN     "default_affiliate_url" TEXT,
ADD COLUMN     "editor_experience_years" INTEGER,
ADD COLUMN     "editor_name" VARCHAR(255),
ADD COLUMN     "editor_position" VARCHAR(255);

-- AlterTable
ALTER TABLE "CasinoCategory" ADD COLUMN     "sort_order" INTEGER DEFAULT 0,
ALTER COLUMN "slug" SET NOT NULL;

-- AlterTable
ALTER TABLE "Country" ADD COLUMN     "regionId" UUID;

-- AlterTable
ALTER TABLE "News" ADD COLUMN     "sort_order" INTEGER DEFAULT 0;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "country" VARCHAR(100),
ADD COLUMN     "phone" VARCHAR(20);

-- CreateTable
CREATE TABLE "CasinoCategoryContentSection" (
    "id" UUID NOT NULL,
    "category_id" UUID NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "content" TEXT NOT NULL,
    "sort_order" INTEGER DEFAULT 0,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "CasinoCategoryContentSection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GameType" (
    "id" UUID NOT NULL,
    "name" VARCHAR(100),
    "slug" VARCHAR(100),
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "GameType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CasinoGameTypeMapping" (
    "casino_id" UUID NOT NULL,
    "game_type_id" UUID NOT NULL,

    CONSTRAINT "CasinoGameTypeMapping_pkey" PRIMARY KEY ("casino_id","game_type_id")
);

-- CreateTable
CREATE TABLE "Region" (
    "id" UUID NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "slug" VARCHAR(100) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Region_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CasinoAffiliateLink" (
    "id" UUID NOT NULL,
    "casino_id" UUID NOT NULL,
    "country_id" UUID NOT NULL,
    "affiliate_url" TEXT NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "CasinoAffiliateLink_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CasinoReview" (
    "id" UUID NOT NULL,
    "casino_id" UUID NOT NULL,
    "reviewer_name" VARCHAR(255) NOT NULL,
    "reviewer_position" VARCHAR(255),
    "reviewer_experience_years" INTEGER,
    "content" TEXT NOT NULL,
    "rating" DECIMAL(2,1),
    "verdict" VARCHAR(50),
    "status" VARCHAR(20) DEFAULT 'published',
    "sort_order" INTEGER DEFAULT 0,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "CasinoReview_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BannedCountry" (
    "id" UUID NOT NULL,
    "country_code" VARCHAR(10) NOT NULL,
    "country_name" VARCHAR(150) NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BannedCountry_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContactTicket" (
    "id" UUID NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "department" VARCHAR(50) NOT NULL,
    "casino_name" VARCHAR(255),
    "subject" VARCHAR(255) NOT NULL,
    "message" TEXT NOT NULL,
    "status" VARCHAR(20) NOT NULL DEFAULT 'pending',
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,
    "user_id" UUID,

    CONSTRAINT "ContactTicket_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HasOffersPostbackConfig" (
    "id" UUID NOT NULL,
    "casino_id" UUID NOT NULL,
    "network_domain" VARCHAR(255) NOT NULL,
    "offer_id" VARCHAR(100) NOT NULL,
    "postback_url" TEXT NOT NULL,
    "status" VARCHAR(20) NOT NULL DEFAULT 'active',
    "notes" TEXT,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "HasOffersPostbackConfig_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HasOffersConversion" (
    "id" UUID NOT NULL,
    "config_id" UUID,
    "casino_id" UUID NOT NULL,
    "transaction_id" VARCHAR(255) NOT NULL,
    "offer_id" VARCHAR(100) NOT NULL,
    "affiliate_id" VARCHAR(100),
    "aff_sub" VARCHAR(255),
    "aff_sub2" VARCHAR(255),
    "aff_sub3" VARCHAR(255),
    "aff_sub4" VARCHAR(255),
    "aff_sub5" VARCHAR(255),
    "conversion_type" VARCHAR(50) NOT NULL,
    "payout" DECIMAL(10,2),
    "sale_amount" DECIMAL(10,2),
    "currency" VARCHAR(10) DEFAULT 'USD',
    "status" VARCHAR(20) NOT NULL DEFAULT 'pending',
    "ip_address" VARCHAR(100),
    "user_agent" TEXT,
    "country" VARCHAR(100),
    "referring_url" TEXT,
    "conversion_time" TIMESTAMP,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP,

    CONSTRAINT "HasOffersConversion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HasOffersClick" (
    "id" UUID NOT NULL,
    "casino_id" UUID NOT NULL,
    "click_id" VARCHAR(255) NOT NULL,
    "transaction_id" VARCHAR(255),
    "user_id" UUID,
    "ip_address" VARCHAR(100),
    "user_agent" TEXT,
    "country" VARCHAR(100),
    "aff_sub" VARCHAR(255),
    "source" VARCHAR(255),
    "clicked_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "conversion_received_at" TIMESTAMP,

    CONSTRAINT "HasOffersClick_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "CasinoCategoryContentSection_category_id_idx" ON "CasinoCategoryContentSection"("category_id");

-- CreateIndex
CREATE UNIQUE INDEX "Region_name_key" ON "Region"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Region_slug_key" ON "Region"("slug");

-- CreateIndex
CREATE INDEX "CasinoAffiliateLink_casino_id_idx" ON "CasinoAffiliateLink"("casino_id");

-- CreateIndex
CREATE INDEX "CasinoAffiliateLink_country_id_idx" ON "CasinoAffiliateLink"("country_id");

-- CreateIndex
CREATE UNIQUE INDEX "CasinoAffiliateLink_casino_id_country_id_key" ON "CasinoAffiliateLink"("casino_id", "country_id");

-- CreateIndex
CREATE INDEX "CasinoReview_casino_id_idx" ON "CasinoReview"("casino_id");

-- CreateIndex
CREATE INDEX "CasinoReview_status_idx" ON "CasinoReview"("status");

-- CreateIndex
CREATE UNIQUE INDEX "BannedCountry_country_code_key" ON "BannedCountry"("country_code");

-- CreateIndex
CREATE INDEX "HasOffersPostbackConfig_casino_id_idx" ON "HasOffersPostbackConfig"("casino_id");

-- CreateIndex
CREATE INDEX "HasOffersPostbackConfig_status_idx" ON "HasOffersPostbackConfig"("status");

-- CreateIndex
CREATE UNIQUE INDEX "HasOffersConversion_transaction_id_key" ON "HasOffersConversion"("transaction_id");

-- CreateIndex
CREATE INDEX "HasOffersConversion_casino_id_idx" ON "HasOffersConversion"("casino_id");

-- CreateIndex
CREATE INDEX "HasOffersConversion_transaction_id_idx" ON "HasOffersConversion"("transaction_id");

-- CreateIndex
CREATE INDEX "HasOffersConversion_status_idx" ON "HasOffersConversion"("status");

-- CreateIndex
CREATE INDEX "HasOffersConversion_conversion_time_idx" ON "HasOffersConversion"("conversion_time");

-- CreateIndex
CREATE UNIQUE INDEX "HasOffersClick_click_id_key" ON "HasOffersClick"("click_id");

-- CreateIndex
CREATE INDEX "HasOffersClick_casino_id_idx" ON "HasOffersClick"("casino_id");

-- CreateIndex
CREATE INDEX "HasOffersClick_click_id_idx" ON "HasOffersClick"("click_id");

-- CreateIndex
CREATE INDEX "HasOffersClick_transaction_id_idx" ON "HasOffersClick"("transaction_id");

-- CreateIndex
CREATE INDEX "HasOffersClick_user_id_idx" ON "HasOffersClick"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "CasinoCategory_slug_key" ON "CasinoCategory"("slug");

-- AddForeignKey
ALTER TABLE "CasinoCategoryContentSection" ADD CONSTRAINT "CasinoCategoryContentSection_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "CasinoCategory"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CasinoGameTypeMapping" ADD CONSTRAINT "CasinoGameTypeMapping_casino_id_fkey" FOREIGN KEY ("casino_id") REFERENCES "Casino"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CasinoGameTypeMapping" ADD CONSTRAINT "CasinoGameTypeMapping_game_type_id_fkey" FOREIGN KEY ("game_type_id") REFERENCES "GameType"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Country" ADD CONSTRAINT "Country_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "Region"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CasinoAffiliateLink" ADD CONSTRAINT "CasinoAffiliateLink_casino_id_fkey" FOREIGN KEY ("casino_id") REFERENCES "Casino"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CasinoAffiliateLink" ADD CONSTRAINT "CasinoAffiliateLink_country_id_fkey" FOREIGN KEY ("country_id") REFERENCES "Country"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CasinoReview" ADD CONSTRAINT "CasinoReview_casino_id_fkey" FOREIGN KEY ("casino_id") REFERENCES "Casino"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContactTicket" ADD CONSTRAINT "ContactTicket_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HasOffersPostbackConfig" ADD CONSTRAINT "HasOffersPostbackConfig_casino_id_fkey" FOREIGN KEY ("casino_id") REFERENCES "Casino"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HasOffersConversion" ADD CONSTRAINT "HasOffersConversion_config_id_fkey" FOREIGN KEY ("config_id") REFERENCES "HasOffersPostbackConfig"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HasOffersConversion" ADD CONSTRAINT "HasOffersConversion_casino_id_fkey" FOREIGN KEY ("casino_id") REFERENCES "Casino"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HasOffersClick" ADD CONSTRAINT "HasOffersClick_casino_id_fkey" FOREIGN KEY ("casino_id") REFERENCES "Casino"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HasOffersClick" ADD CONSTRAINT "HasOffersClick_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
