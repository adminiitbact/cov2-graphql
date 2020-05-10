alter table "public"."facility"
           add constraint "facility_agreement_status_fkey"
           foreign key ("agreement_status")
           references "public"."facility_agreement_status"
           ("key") on update cascade on delete cascade;
