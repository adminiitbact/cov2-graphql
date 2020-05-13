ALTER TABLE "public"."area" ADD COLUMN "value" text;
ALTER TABLE "public"."area" ALTER COLUMN "value" DROP NOT NULL;
