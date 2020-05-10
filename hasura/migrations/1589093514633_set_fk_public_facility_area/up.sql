alter table "public"."facility"
           add constraint "facility_area_fkey"
           foreign key ("area")
           references "public"."area"
           ("key") on update cascade on delete cascade;
