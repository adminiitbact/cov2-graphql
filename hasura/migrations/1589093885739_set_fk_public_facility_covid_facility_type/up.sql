alter table "public"."facility"
           add constraint "facility_covid_facility_type_fkey"
           foreign key ("covid_facility_type")
           references "public"."covid_facility_type"
           ("key") on update cascade on delete cascade;
