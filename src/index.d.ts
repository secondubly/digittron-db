import { CommandType, PermissionLevel, PrismaClient } from "@prisma/client";
export { Prisma } from ".prisma/client";

export interface Context {
  prisma: PrismaClient
}

export function createContext(): Promise<Context>;
export type PermissionLevel = typeof PermissionLevel
export type CommandType = typeof CommandType