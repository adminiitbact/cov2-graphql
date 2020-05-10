ALTER TABLE "public"."patient_test_detail" ADD COLUMN "collection_center" int4;
ALTER TABLE "public"."patient_test_detail" ALTER COLUMN "collection_center" DROP NOT NULL;
