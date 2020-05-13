alter table "public"."patient_discharge"
           add constraint "patient_discharge_patient_fkey"
           foreign key ("patient")
           references "public"."patient"
           ("id") on update cascade on delete cascade;
