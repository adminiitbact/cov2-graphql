alter table "public"."ward"
           add constraint "ward_severity_fkey"
           foreign key ("severity")
           references "public"."severity"
           ("name") on update cascade on delete cascade;
