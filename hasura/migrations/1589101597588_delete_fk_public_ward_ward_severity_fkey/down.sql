alter table "public"."ward" add foreign key ("severity") references "public"."severity"("id") on update cascade on delete cascade;
