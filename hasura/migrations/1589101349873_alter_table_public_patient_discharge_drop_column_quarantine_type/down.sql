ALTER TABLE "public"."patient_discharge" ADD COLUMN "quarantine_type" int4;
ALTER TABLE "public"."patient_discharge" ALTER COLUMN "quarantine_type" DROP NOT NULL;
