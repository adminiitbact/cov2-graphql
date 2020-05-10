ALTER TABLE "public"."patient" ADD COLUMN "gender" int4;
ALTER TABLE "public"."patient" ALTER COLUMN "gender" DROP NOT NULL;
