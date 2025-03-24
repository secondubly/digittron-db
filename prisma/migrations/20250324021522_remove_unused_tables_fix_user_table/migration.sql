/*
  Warnings:

  - You are about to drop the `key` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `session` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `password` to the `user_` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "key" DROP CONSTRAINT "key_user_id_fkey";

-- DropForeignKey
ALTER TABLE "session" DROP CONSTRAINT "session_user_id_fkey";

-- AlterTable
ALTER TABLE "user_" ADD COLUMN     "password" TEXT NOT NULL;

-- DropTable
DROP TABLE "key";

-- DropTable
DROP TABLE "session";
