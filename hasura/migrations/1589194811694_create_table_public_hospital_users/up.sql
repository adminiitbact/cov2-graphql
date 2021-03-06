CREATE TABLE "public"."hospital_users"("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "email" text NOT NULL, "facility" integer NOT NULL, "name" text NOT NULL, "user_id" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("facility") REFERENCES "public"."facility"("id") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_hospital_users_updated_at"
BEFORE UPDATE ON "public"."hospital_users"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_hospital_users_updated_at" ON "public"."hospital_users" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
