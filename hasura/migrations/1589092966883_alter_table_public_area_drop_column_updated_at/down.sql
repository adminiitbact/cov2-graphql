ALTER TABLE "public"."area" ADD COLUMN "updated_at" timestamptz;
ALTER TABLE "public"."area" ALTER COLUMN "updated_at" DROP NOT NULL;
ALTER TABLE "public"."area" ALTER COLUMN "updated_at" SET DEFAULT now();
