alter table "public"."patient_discharge"
           add constraint "patient_discharge_quarantine_type_fkey"
           foreign key ("quarantine_type")
           references "public"."quarantine_type"
           ("key") on update cascade on delete cascade;
