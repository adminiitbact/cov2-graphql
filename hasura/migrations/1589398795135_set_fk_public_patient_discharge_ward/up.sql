alter table "public"."patient_discharge"
           add constraint "patient_discharge_ward_fkey"
           foreign key ("ward")
           references "public"."ward"
           ("id") on update cascade on delete cascade;
