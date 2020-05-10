alter table "public"."patient_test_detail" add foreign key ("sent_to") references "public"."lab"("id") on update cascade on delete cascade;
