alter table "public"."facility"
           add constraint "facility_facility_status_fkey"
           foreign key ("facility_status")
           references "public"."facility_status"
           ("key") on update cascade on delete cascade;
