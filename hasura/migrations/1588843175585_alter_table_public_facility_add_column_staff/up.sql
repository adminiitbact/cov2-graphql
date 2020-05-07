ALTER TABLE "public"."facility" ADD COLUMN "staff" jsonb NOT NULL DEFAULT jsonb_build_object();
