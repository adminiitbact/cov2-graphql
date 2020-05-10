alter table "public"."facility" add foreign key ("covid_facility_type") references "public"."covid_facility_type"("id") on update cascade on delete cascade;
