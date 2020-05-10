ALTER TABLE "public"."facility" ADD COLUMN "covid_facility_type" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "covid_facility_type" DROP NOT NULL;
