-- CreateEnum
CREATE TYPE "CommandType" AS ENUM ('DEFAULT', 'CUSTOM');

-- AlterTable
ALTER TABLE "commands" ADD COLUMN     "type" "CommandType" NOT NULL DEFAULT 'CUSTOM';
