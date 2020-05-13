alter table "public"."area" drop constraint "area_region_fkey",
             add constraint "area_region_fkey"
             foreign key ("region")
             references "public"."region"
             ("key") on update cascade on delete cascade;
