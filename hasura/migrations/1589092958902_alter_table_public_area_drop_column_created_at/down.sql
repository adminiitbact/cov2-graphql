ALTER TABLE "public"."area" ADD COLUMN "created_at" timestamptz;
ALTER TABLE "public"."area" ALTER COLUMN "created_at" DROP NOT NULL;
ALTER TABLE "public"."area" ALTER COLUMN "created_at" SET DEFAULT now();
