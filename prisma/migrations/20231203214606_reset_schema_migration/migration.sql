-- AlterTable
ALTER TABLE "user_" RENAME CONSTRAINT "user_pkey" TO "user__pkey";

-- RenameIndex
ALTER INDEX "user_id_key" RENAME TO "user__id_key";

-- RenameIndex
ALTER INDEX "user_username_key" RENAME TO "user__username_key";
