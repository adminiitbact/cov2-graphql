alter table "public"."facility"
           add constraint "facility_hospital_category_fkey"
           foreign key ("hospital_category")
           references "public"."hospital_category"
           ("name") on update cascade on delete cascade;
