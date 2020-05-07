ALTER TABLE "public"."patient" ADD COLUMN "covid_uid" text;
ALTER TABLE "public"."patient" ALTER COLUMN "covid_uid" DROP NOT NULL;
ALTER TABLE "public"."patient" ADD CONSTRAINT patient_covid_uid_key UNIQUE (covid_uid);
