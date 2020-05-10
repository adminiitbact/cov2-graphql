ALTER TABLE "public"."facility" ADD COLUMN "hospital_category" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "hospital_category" DROP NOT NULL;
