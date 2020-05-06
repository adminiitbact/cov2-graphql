ALTER TABLE "public"."facility_agreement_status" ADD COLUMN "updated_at" timestamptz;
ALTER TABLE "public"."facility_agreement_status" ALTER COLUMN "updated_at" DROP NOT NULL;
ALTER TABLE "public"."facility_agreement_status" ALTER COLUMN "updated_at" SET DEFAULT now();
