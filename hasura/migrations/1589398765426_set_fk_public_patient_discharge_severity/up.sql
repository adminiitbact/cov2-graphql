alter table "public"."patient_discharge"
           add constraint "patient_discharge_severity_fkey"
           foreign key ("severity")
           references "public"."severity"
           ("key") on update cascade on delete cascade;
