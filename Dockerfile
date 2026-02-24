FROM node:20-alpine

# Install only git for repo syncing
RUN apk add --no-cache git

WORKDIR /app

# Copy source (no .git thanks to .dockerignore)
COPY . .

EXPOSE 8080

CMD ["node", "scripts/static-supervisor.js"]
