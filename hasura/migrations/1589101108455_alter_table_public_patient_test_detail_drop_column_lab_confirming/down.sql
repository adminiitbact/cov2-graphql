ALTER TABLE "public"."patient_test_detail" ADD COLUMN "lab_confirming" int4;
ALTER TABLE "public"."patient_test_detail" ALTER COLUMN "lab_confirming" DROP NOT NULL;
