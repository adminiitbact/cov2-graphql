ALTER TABLE "public"."patient_clinical_history" ADD COLUMN "facility" int4;
ALTER TABLE "public"."patient_clinical_history" ALTER COLUMN "facility" DROP NOT NULL;
ALTER TABLE "public"."patient_clinical_history" ADD CONSTRAINT patient_clinical_history_facility_fkey FOREIGN KEY (facility) REFERENCES "public"."facility" (id) ON DELETE cascade ON UPDATE cascade;
