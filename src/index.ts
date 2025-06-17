import 'dotenv/config'
import { drizzle } from 'drizzle-orm/node-postgres'
import { usersTable, permissionLevelsTable } from './db/schema.js';

type Permission = typeof permissionLevelsTable.$inferInsert

const db = drizzle(process.env.DATABASE_URL!)


// TODO: add to init script
const permissions: Permission[] = [
    {
        level: 0,
        name: "BROADCASTER",
    },
    {
        level: 1,
        name: "MODERATOR",
    },
    {
        level: 2,
        name: "SUBSCRIBER"
    },
    {
        level: 3,
        name: "VIP"
    },
    {
        level: 4,
        name: "VIEWER"
    }
]

await db.insert(permissionLevelsTable).values(permissions)