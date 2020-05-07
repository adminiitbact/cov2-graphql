ALTER TABLE "public"."facility" ADD COLUMN "inventory" jsonb NOT NULL DEFAULT jsonb_build_object();
