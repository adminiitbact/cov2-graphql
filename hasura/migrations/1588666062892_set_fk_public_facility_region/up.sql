alter table "public"."facility"
           add constraint "facility_region_fkey"
           foreign key ("region")
           references "public"."region"
           ("name") on update cascade on delete cascade;
