alter table "public"."patient"
           add constraint "patient_locality_fkey"
           foreign key ("locality")
           references "public"."area"
           ("key") on update cascade on delete cascade;
