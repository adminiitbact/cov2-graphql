alter table "public"."facility"
           add constraint "facility_jurisdiction_fkey"
           foreign key ("jurisdiction")
           references "public"."jurisdiction"
           ("key") on update cascade on delete cascade;
