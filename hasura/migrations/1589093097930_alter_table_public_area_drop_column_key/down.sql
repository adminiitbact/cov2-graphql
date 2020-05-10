ALTER TABLE "public"."area" ADD COLUMN "key" text;
ALTER TABLE "public"."area" ALTER COLUMN "key" DROP NOT NULL;
