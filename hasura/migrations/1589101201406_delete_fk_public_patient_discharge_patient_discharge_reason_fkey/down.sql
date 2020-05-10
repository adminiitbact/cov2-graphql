alter table "public"."patient_discharge" add foreign key ("reason") references "public"."patient_discharge_reason"("id") on update cascade on delete cascade;
