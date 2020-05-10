alter table "public"."facility" add foreign key ("institution_type") references "public"."institution_type"("id") on update cascade on delete cascade;
