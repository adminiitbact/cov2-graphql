ALTER TABLE "public"."patient_discharge" ADD COLUMN "severity" text;
ALTER TABLE "public"."patient_discharge" ALTER COLUMN "severity" DROP NOT NULL;
ALTER TABLE "public"."patient_discharge" ADD CONSTRAINT patient_discharge_severity_fkey FOREIGN KEY (severity) REFERENCES "public"."severity" (name) ON DELETE cascade ON UPDATE cascade;
