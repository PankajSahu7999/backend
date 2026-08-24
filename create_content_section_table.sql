CREATE TABLE "CasinoCategoryContentSection" (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  category_id UUID NOT NULL,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT "CasinoCategoryContentSection_category_id_fkey" FOREIGN KEY (category_id) REFERENCES "CasinoCategory"(id) ON DELETE CASCADE
);

CREATE INDEX "CasinoCategoryContentSection_category_id_idx" ON "CasinoCategoryContentSection"(category_id);
