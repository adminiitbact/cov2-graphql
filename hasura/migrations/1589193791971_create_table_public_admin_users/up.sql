CREATE TABLE "public"."admin_users"("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "user_id" text NOT NULL, "name" text NOT NULL, "email" text NOT NULL, "designation" text NOT NULL, "jurisdiction" text NOT NULL, "region" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("jurisdiction") REFERENCES "public"."jurisdiction"("key") ON UPDATE cascade ON DELETE cascade, FOREIGN KEY ("region") REFERENCES "public"."region"("key") ON UPDATE cascade ON DELETE cascade);
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
CREATE TRIGGER "set_public_admin_users_updated_at"
BEFORE UPDATE ON "public"."admin_users"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_admin_users_updated_at" ON "public"."admin_users" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
