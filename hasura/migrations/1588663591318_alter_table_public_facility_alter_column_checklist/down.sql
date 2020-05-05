ALTER TABLE ONLY "public"."facility" ALTER COLUMN "checklist" SET DEFAULT jsonb_build_object();
