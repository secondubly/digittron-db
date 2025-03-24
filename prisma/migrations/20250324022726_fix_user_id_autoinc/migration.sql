-- AlterTable
CREATE SEQUENCE user__id_seq;
ALTER TABLE "user_" ALTER COLUMN "id" SET DEFAULT nextval('user__id_seq');
ALTER SEQUENCE user__id_seq OWNED BY "user_"."id";
