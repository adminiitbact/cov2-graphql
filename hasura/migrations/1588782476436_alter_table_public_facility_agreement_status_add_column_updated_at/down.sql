DROP TRIGGER IF EXISTS "set_public_facility_agreement_status_updated_at" ON "public"."facility_agreement_status";
ALTER TABLE "public"."facility_agreement_status" DROP COLUMN "updated_at";
