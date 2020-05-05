CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."patient_clinical_history"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "onset_symptoms" date NOT NULL, "pre_existing_conditions" jsonb NOT NULL DEFAULT jsonb_build_object(), "primary_conditions" jsonb NOT NULL DEFAULT jsonb_build_object(), "secondary_conditions" jsonb NOT NULL DEFAULT jsonb_build_object(), "symptoms_at_time_of_admission" boolean NOT NULL DEFAULT false, "patient" uuid NOT NULL, PRIMARY KEY ("id") );
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_patient_clinical_history_updated_at"
BEFORE UPDATE ON "public"."patient_clinical_history"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_patient_clinical_history_updated_at" ON "public"."patient_clinical_history" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
