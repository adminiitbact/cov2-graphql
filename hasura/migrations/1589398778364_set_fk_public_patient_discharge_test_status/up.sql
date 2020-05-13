alter table "public"."patient_discharge"
           add constraint "patient_discharge_test_status_fkey"
           foreign key ("test_status")
           references "public"."test_result_status"
           ("key") on update cascade on delete cascade;
