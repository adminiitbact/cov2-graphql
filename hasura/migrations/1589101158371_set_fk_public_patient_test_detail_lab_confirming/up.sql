alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_lab_confirming_fkey"
           foreign key ("lab_confirming")
           references "public"."lab"
           ("key") on update cascade on delete cascade;
