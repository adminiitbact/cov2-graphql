alter table "public"."patient_test_detail"
           add constraint "patient_test_detail_collection_center_fkey"
           foreign key ("collection_center")
           references "public"."collection_center"
           ("key") on update cascade on delete cascade;
