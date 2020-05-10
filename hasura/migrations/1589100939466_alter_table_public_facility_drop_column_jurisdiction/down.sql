ALTER TABLE "public"."facility" ADD COLUMN "jurisdiction" int4;
ALTER TABLE "public"."facility" ALTER COLUMN "jurisdiction" DROP NOT NULL;
