CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."patient_discharge"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "facility" uuid NOT NULL, "patient" uuid NOT NULL, "quarantine_type" text NOT NULL, "reason" text NOT NULL, "severity" text NOT NULL, "test_status" text NOT NULL, "ward" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("facility") REFERENCES "public"."facility"("id") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_patient_discharge_updated_at"
BEFORE UPDATE ON "public"."patient_discharge"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_patient_discharge_updated_at" ON "public"."patient_discharge" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
