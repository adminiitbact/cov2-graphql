CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."facility_checklist"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "data" jsonb NOT NULL DEFAULT jsonb_build_object(), "facility" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("facility") REFERENCES "public"."facility"("id") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_facility_checklist_updated_at"
BEFORE UPDATE ON "public"."facility_checklist"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_facility_checklist_updated_at" ON "public"."facility_checklist" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
