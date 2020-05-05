ALTER TABLE "public"."facility" ADD COLUMN "checklist" jsonb NOT NULL DEFAULT jsonb_build_object();
