import { Pool } from 'pg'
import sql from 'sqlstring';

const pool = new Pool({
  host: process.env.DB_HOST || 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '1234',
  database: process.env.DB_NAME || 'rinhadb',
  min: 50,
  max: parseInt(process.env.POOL_SIZE || '50'),
  idleTimeoutMillis: 0,
  connectionTimeoutMillis: 10000,
});
