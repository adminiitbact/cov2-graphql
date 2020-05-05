alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_lab_fkey"
           foreign key ("lab")
           references "public"."lab"
           ("name") on update cascade on delete cascade;
