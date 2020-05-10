alter table "public"."facility"
           add constraint "facility_status_fkey"
           foreign key ("status")
           references "public"."facility_status"
           ("key") on update cascade on delete cascade;
