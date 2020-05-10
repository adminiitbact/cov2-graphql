alter table "public"."facility" add foreign key ("area") references "public"."area"("id") on update cascade on delete cascade;
