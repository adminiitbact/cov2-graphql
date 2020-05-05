alter table "public"."facility"
           add constraint "facility_covid_facility_type_fkey"
           foreign key ("covid_facility_type")
           references "public"."facility_covid_type"
           ("name") on update cascade on delete cascade;
