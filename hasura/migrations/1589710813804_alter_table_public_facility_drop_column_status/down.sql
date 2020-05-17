ALTER TABLE "public"."facility" ADD COLUMN "status" text;
ALTER TABLE "public"."facility" ALTER COLUMN "status" DROP NOT NULL;
