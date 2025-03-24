/*
  Warnings:

  - The primary key for the `user_` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Changed the type of `id` on the `user_` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "user_" DROP CONSTRAINT "user__pkey",
DROP COLUMN "id",
ADD COLUMN     "id" BIGINT NOT NULL,
ADD CONSTRAINT "user__pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "user__id_key" ON "user_"("id");
