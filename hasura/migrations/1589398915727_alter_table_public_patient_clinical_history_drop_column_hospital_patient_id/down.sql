ALTER TABLE "public"."patient_clinical_history" ADD COLUMN "hospital_patient_id" text;
ALTER TABLE "public"."patient_clinical_history" ALTER COLUMN "hospital_patient_id" DROP NOT NULL;
