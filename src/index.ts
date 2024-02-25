import { PrismaClient } from "@prisma/client";
import { Context } from "./index.d";

const prisma = new PrismaClient({
    datasources: {
        db: {
            url: process.env.DATABASE_URL
        }
    }
});

export const createContext = async (): Promise<Context> => ({ prisma })
export { $Enums, Prisma } from '@prisma/client'