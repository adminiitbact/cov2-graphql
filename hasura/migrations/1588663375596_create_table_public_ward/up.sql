CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."ward"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "active" boolean NOT NULL DEFAULT true, "name" text NOT NULL, "covid_status" text NOT NULL, "covid_ward" boolean NOT NULL DEFAULT false, "extra_fields" jsonb NOT NULL DEFAULT jsonb_build_object(), "facility" uuid NOT NULL, "floor" text NOT NULL, "gender" text NOT NULL, "severity" text NOT NULL, "total_beds" integer NOT NULL, "ventilators" integer NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("facility") REFERENCES "public"."facility"("id") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_ward_updated_at"
BEFORE UPDATE ON "public"."ward"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_ward_updated_at" ON "public"."ward" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
