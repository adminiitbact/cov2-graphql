alter table "public"."ward"
           add constraint "ward_gender_fkey"
           foreign key ("gender")
           references "public"."gender"
           ("name") on update cascade on delete cascade;
