import { integer, pgTable, text } from "drizzle-orm/pg-core";

export const commandsTable = pgTable("command", {
    id: integer().primaryKey().generatedAlwaysAsIdentity(),
    name: text().notNull(),
    message: text().notNull(),
    permission_level: integer().references(() => permissionLevelsTable.level)
})

export const permissionLevelsTable = pgTable("permission_level", {
    level: integer().notNull().primaryKey().unique(),
    name: text().notNull()
})

export const usersTable = pgTable("user_", {
    twitch_id: text().notNull().primaryKey(),
    username: text().notNull(),
    permission_level: integer().notNull().default(4).references(() => permissionLevelsTable.level)
})