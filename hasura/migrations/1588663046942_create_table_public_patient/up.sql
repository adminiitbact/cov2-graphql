CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."patient"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "address" text NOT NULL, "dob" date NOT NULL, "contact_number" integer NOT NULL, "covid_uid" text NOT NULL, "district" text NOT NULL, "disctrict_case_id" text NOT NULL, "emergency_contact" jsonb NOT NULL, "first_name" text NOT NULL, "gender" text NOT NULL, "goi_covid_id" text NOT NULL, "hospital_patient_id" text NOT NULL, "last_name" text NOT NULL, "locality" text NOT NULL, "occupation" text NOT NULL, "pincode" integer NOT NULL, PRIMARY KEY ("id") , UNIQUE ("covid_uid"));
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
CREATE TRIGGER "set_public_patient_updated_at"
BEFORE UPDATE ON "public"."patient"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_patient_updated_at" ON "public"."patient" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
