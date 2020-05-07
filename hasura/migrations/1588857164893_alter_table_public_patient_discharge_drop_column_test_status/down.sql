ALTER TABLE "public"."patient_discharge" ADD COLUMN "test_status" text;
ALTER TABLE "public"."patient_discharge" ALTER COLUMN "test_status" DROP NOT NULL;
