alter table "public"."facility" add foreign key ("region") references "public"."region"("id") on update cascade on delete cascade;
