import { PermissionLevel, PrismaClient } from "@prisma/client";
export { Prisma } from ".prisma/client";

export interface Context {
  prisma: PrismaClient
  PermissionLevel: PermissionLevel
  CommandType: CommandType
}

export function createContext(): Promise<Context>;