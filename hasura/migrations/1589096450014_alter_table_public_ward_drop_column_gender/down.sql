ALTER TABLE "public"."ward" ADD COLUMN "gender" int4;
ALTER TABLE "public"."ward" ALTER COLUMN "gender" DROP NOT NULL;
