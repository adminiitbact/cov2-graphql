ALTER TABLE "public"."patient_test_detail" ADD COLUMN "sent_to" int4;
ALTER TABLE "public"."patient_test_detail" ALTER COLUMN "sent_to" DROP NOT NULL;
