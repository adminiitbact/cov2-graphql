alter table "public"."facility" add foreign key ("jurisdiction") references "public"."jurisdiction"("id") on update cascade on delete cascade;
