CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."patient_test_detail"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "collection_center" text NOT NULL, "collection_date" date NOT NULL, "lab" text NOT NULL, "patient" uuid NOT NULL, "result" text NOT NULL, "result_available" boolean NOT NULL DEFAULT false, "sample_collected" boolean NOT NULL DEFAULT false, "tested_at" text NOT NULL, PRIMARY KEY ("id") );
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
CREATE TRIGGER "set_public_patient_test_detail_updated_at"
BEFORE UPDATE ON "public"."patient_test_detail"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_patient_test_detail_updated_at" ON "public"."patient_test_detail" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
