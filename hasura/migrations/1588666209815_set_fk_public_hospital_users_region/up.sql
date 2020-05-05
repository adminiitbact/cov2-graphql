alter table "public"."hospital_users"
           add constraint "hospital_users_region_fkey"
           foreign key ("region")
           references "public"."region"
           ("name") on update cascade on delete cascade;
