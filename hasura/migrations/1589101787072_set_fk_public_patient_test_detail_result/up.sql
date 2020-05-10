alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_result_fkey"
           foreign key ("result")
           references "public"."test_result_status"
           ("key") on update cascade on delete cascade;
