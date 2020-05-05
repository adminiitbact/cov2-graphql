CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."facility_agreement_status"("name" text NOT NULL, "id" uuid NOT NULL DEFAULT gen_random_uuid(), PRIMARY KEY ("id") );
