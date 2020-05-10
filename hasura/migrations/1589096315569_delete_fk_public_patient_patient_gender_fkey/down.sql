alter table "public"."patient" add foreign key ("gender") references "public"."gender"("id") on update cascade on delete cascade;
