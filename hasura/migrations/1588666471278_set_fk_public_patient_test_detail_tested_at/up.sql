alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_tested_at_fkey"
           foreign key ("tested_at")
           references "public"."lab"
           ("name") on update cascade on delete cascade;
