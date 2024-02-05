## Stack

- Bun
- Hono (https://hono.dev/)
- Postgres
- Nginx
- Redis

## Docker

```sh
docker buildx create --name rinha-bun --platform linux/amd64,linux/arm64,linux/arm64/v8
docker buildx build -t met4tron/rinha-nodejs:latest --builder rinha-nodejs --push --platform linux/arm64/v8,linux/amd64,linux/arm64 .
```
