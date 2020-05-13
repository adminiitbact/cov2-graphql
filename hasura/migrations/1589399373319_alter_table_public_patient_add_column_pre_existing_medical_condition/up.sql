ALTER TABLE "public"."patient" ADD COLUMN "pre_existing_medical_condition" jsonb NOT NULL DEFAULT jsonb_build_object();
