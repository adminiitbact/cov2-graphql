alter table "public"."facility" add foreign key ("hospital_category") references "public"."hospital_category"("id") on update cascade on delete cascade;
