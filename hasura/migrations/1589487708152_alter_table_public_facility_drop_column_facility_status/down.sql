ALTER TABLE "public"."facility" ADD COLUMN "facility_status" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "facility_status" DROP NOT NULL;
