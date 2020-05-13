alter table "public"."patient_clinical_history"
           add constraint "patient_clinical_history_facility_fkey"
           foreign key ("facility")
           references "public"."facility"
           ("id") on update cascade on delete cascade;
