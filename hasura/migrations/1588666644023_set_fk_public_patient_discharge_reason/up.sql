alter table "public"."patient_discharge"
           add constraint "patient_discharge_reason_fkey"
           foreign key ("reason")
           references "public"."patient_discharge_reason"
           ("name") on update cascade on delete cascade;
