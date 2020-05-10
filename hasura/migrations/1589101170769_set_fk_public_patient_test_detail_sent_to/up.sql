alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_sent_to_fkey"
           foreign key ("sent_to")
           references "public"."lab"
           ("key") on update cascade on delete cascade;
