# Build stag
FROM node:20-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci --prefer-offline --no-audit
COPY . .
RUN npm run build

# Production stage
FROM node:20-alpine AS production
WORKDIR /app

RUN apk add --no-cache curl wget
RUN npm install -g pm2

COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./
RUN npm ci --only=production --prefer-offline --no-audit
# Create PM2 ecosystem file
RUN echo '{\
    "apps": [\
    {\
    "name": "server",\
    "script": "dist/index.js",\
    "instances": 1\
    },\
    {\
    "name": "worker",\
    "script": "dist/index-worker.js",\
    "instances": 1\
    }\
    ]\
    }' > ecosystem.config.json

EXPOSE 80
EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:80/health || exit 1


CMD ["pm2-runtime", "ecosystem.config.json"]
