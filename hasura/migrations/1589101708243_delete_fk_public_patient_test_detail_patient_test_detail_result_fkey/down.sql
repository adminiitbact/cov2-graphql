alter table "public"."patient_test_detail" add foreign key ("result") references "public"."test_result_status"("id") on update cascade on delete cascade;
