ALTER TABLE "public"."patient" ADD COLUMN "locality" text;
ALTER TABLE "public"."patient" ALTER COLUMN "locality" DROP NOT NULL;
