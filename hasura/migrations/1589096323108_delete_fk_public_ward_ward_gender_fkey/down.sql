alter table "public"."ward" add foreign key ("gender") references "public"."gender"("id") on update cascade on delete cascade;
