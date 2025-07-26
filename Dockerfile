# Build stage
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --prefer-offline --no-audit
COPY . .
RUN npm run build

# Production stage
FROM node:20-alpine AS production
WORKDIR /app

RUN apk add --no-cache curl

COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./

RUN npm ci --only=production --prefer-offline --no-audit \
 && npm prune --production \
 && npm cache clean --force \
 && rm -rf /root/.npm /root/.cache

EXPOSE 80 8080

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:80/health || exit 1

CMD ["node", "dist/index.js"]
