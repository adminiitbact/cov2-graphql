CREATE TRIGGER "set_public_facility_agreement_status_updated_at"
BEFORE UPDATE ON "public"."facility_agreement_status"
FOR EACH ROW EXECUTE FUNCTION set_current_timestamp_updated_at();COMMENT ON TRIGGER "set_public_facility_agreement_status_updated_at" ON "public"."facility_agreement_status"
IS E'trigger to set value of column "updated_at" to current timestamp on row update';
