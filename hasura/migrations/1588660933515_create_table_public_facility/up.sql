CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."facility"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "address" text NOT NULL, "agreement_status" text NOT NULL, "area" text NOT NULL, "covid_facility_type" text NOT NULL, "email" text NOT NULL, "facility_status" text NOT NULL, "government_hospital" integer NOT NULL, "has_links" integer NOT NULL, "hospital_category" text NOT NULL, "institution_type" text NOT NULL, "is_fever_clinic_available" boolean NOT NULL DEFAULT false, "is_separate_entry_exit_available" boolean NOT NULL DEFAULT false, "jurisdiction" text NOT NULL, "name" text NOT NULL, "region" integer NOT NULL, "telephone" integer NOT NULL, "ulb_ward_name" text NOT NULL, "ulb_zone_name" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("area") REFERENCES "public"."area"("name") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_facility_updated_at"
BEFORE UPDATE ON "public"."facility"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_facility_updated_at" ON "public"."facility" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
