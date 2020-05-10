alter table "public"."patient"
           add constraint "patient_gender_fkey"
           foreign key ("gender")
           references "public"."gender"
           ("key") on update cascade on delete cascade;
