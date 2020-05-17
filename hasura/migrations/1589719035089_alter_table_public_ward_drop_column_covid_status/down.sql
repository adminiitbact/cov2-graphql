ALTER TABLE "public"."ward" ADD COLUMN "covid_status" int4;
ALTER TABLE "public"."ward" ALTER COLUMN "covid_status" DROP NOT NULL;
