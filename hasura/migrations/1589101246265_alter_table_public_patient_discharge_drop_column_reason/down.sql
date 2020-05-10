ALTER TABLE "public"."patient_discharge" ADD COLUMN "reason" int4;
ALTER TABLE "public"."patient_discharge" ALTER COLUMN "reason" DROP NOT NULL;
