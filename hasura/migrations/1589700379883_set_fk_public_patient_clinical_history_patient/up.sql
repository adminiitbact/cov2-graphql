alter table "public"."patient_clinical_history"
           add constraint "patient_clinical_history_patient_fkey"
           foreign key ("patient")
           references "public"."patient"
           ("id") on update cascade on delete cascade;
