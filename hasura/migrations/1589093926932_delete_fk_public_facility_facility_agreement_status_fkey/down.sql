alter table "public"."facility" add foreign key ("agreement_status") references "public"."facility_agreement_status"("id") on update cascade on delete cascade;
