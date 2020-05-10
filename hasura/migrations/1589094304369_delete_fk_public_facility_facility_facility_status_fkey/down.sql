alter table "public"."facility" add foreign key ("facility_status") references "public"."facility_status"("id") on update cascade on delete cascade;
