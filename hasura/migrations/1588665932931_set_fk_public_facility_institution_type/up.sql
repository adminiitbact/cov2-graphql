alter table "public"."facility"
           add constraint "facility_institution_type_fkey"
           foreign key ("institution_type")
           references "public"."institution_type"
           ("name") on update cascade on delete cascade;
