alter table "public"."patient_discharge" add foreign key ("quarantine_type") references "public"."quarantine_type"("id") on update cascade on delete cascade;
