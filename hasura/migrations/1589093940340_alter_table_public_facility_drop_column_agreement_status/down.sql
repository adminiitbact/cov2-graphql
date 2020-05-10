ALTER TABLE "public"."facility" ADD COLUMN "agreement_status" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "agreement_status" DROP NOT NULL;
