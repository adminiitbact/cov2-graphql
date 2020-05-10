ALTER TABLE "public"."facility" ADD COLUMN "region" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "region" DROP NOT NULL;
