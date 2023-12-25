export { CommandType } from "@prisma/client";
export { Prisma } from ".prisma/client";

export interface Context {
  prisma: PrismaClient
}

export function createContext(): Promise<Context>;