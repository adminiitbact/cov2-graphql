alter table "public"."facility" add foreign key ("status") references "public"."facility_status"("key") on update cascade on delete cascade;
