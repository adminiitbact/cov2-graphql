ALTER TABLE "public"."patient" ADD COLUMN "pincode" int4;
ALTER TABLE "public"."patient" ALTER COLUMN "pincode" DROP NOT NULL;
