import { Hono } from 'hono'

const app = new Hono();

export default {
  port: parseInt(process.env.HTTP_PORT || '8080'),
  fetch: app.fetch
}
