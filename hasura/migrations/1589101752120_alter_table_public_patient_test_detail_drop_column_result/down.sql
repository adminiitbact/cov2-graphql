ALTER TABLE "public"."patient_test_detail" ADD COLUMN "result" int4;
ALTER TABLE "public"."patient_test_detail" ALTER COLUMN "result" DROP NOT NULL;
