ALTER TABLE "public"."facility_agreement_status" ADD COLUMN "slug" text;
ALTER TABLE "public"."facility_agreement_status" ALTER COLUMN "slug" DROP NOT NULL;
ALTER TABLE "public"."facility_agreement_status" ADD CONSTRAINT facility_agreement_status_slug_key UNIQUE (slug);
