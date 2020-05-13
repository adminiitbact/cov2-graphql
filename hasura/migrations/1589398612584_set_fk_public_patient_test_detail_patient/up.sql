alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_patient_fkey"
           foreign key ("patient")
           references "public"."patient"
           ("id") on update cascade on delete cascade;
