ALTER TABLE "public"."hospital_users" ADD COLUMN "region" int4;
ALTER TABLE "public"."hospital_users" ALTER COLUMN "region" DROP NOT NULL;
