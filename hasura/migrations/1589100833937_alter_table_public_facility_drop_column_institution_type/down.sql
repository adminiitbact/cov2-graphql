ALTER TABLE "public"."facility" ADD COLUMN "institution_type" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "institution_type" DROP NOT NULL;
