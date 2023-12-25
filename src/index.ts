import { PrismaClient, PermissionLevel, CommandType } from "@prisma/client";
import { Context } from "./index.d";

const prisma = new PrismaClient();

export const createContext = async (): Promise<Context> => ({ prisma, PermissionLevel, CommandType });