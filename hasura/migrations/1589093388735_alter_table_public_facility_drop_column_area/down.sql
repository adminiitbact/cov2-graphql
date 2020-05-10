ALTER TABLE "public"."facility" ADD COLUMN "area" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "area" DROP NOT NULL;
