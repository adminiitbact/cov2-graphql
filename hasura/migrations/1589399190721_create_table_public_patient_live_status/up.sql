CREATE TABLE "public"."patient_live_status"("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "facility" integer NOT NULL, "hospital_patient_id" text NOT NULL, "patient" integer NOT NULL, "severity" text NOT NULL, "test_status" text NOT NULL, "ward" integer NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("facility") REFERENCES "public"."facility"("id") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("patient") REFERENCES "public"."patient"("id") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("severity") REFERENCES "public"."severity"("key") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("test_status") REFERENCES "public"."test_result_status"("key") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("ward") REFERENCES "public"."ward"("id") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_patient_live_status_updated_at"
BEFORE UPDATE ON "public"."patient_live_status"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_patient_live_status_updated_at" ON "public"."patient_live_status" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
