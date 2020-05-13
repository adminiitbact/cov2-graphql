alter table "public"."patient_clinical_history" add foreign key ("patient") references "public"."patient"("id") on update cascade on delete cascade;
