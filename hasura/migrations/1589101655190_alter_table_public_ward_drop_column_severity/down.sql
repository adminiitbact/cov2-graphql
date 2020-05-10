ALTER TABLE "public"."ward" ADD COLUMN "severity" int4;
ALTER TABLE "public"."ward" ALTER COLUMN "severity" DROP NOT NULL;
