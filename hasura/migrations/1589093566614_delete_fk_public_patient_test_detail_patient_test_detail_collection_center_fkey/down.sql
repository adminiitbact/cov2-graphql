alter table "public"."patient_test_detail" add foreign key ("collection_center") references "public"."collection_center"("id") on update cascade on delete cascade;
