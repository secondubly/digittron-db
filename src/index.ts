import 'dotenv/config'
import { drizzle } from 'drizzle-orm/node-postgres'
import * as schema from './db/schema.js';

const db = drizzle(process.env.DATABASE_URL!, { logger: true, schema })