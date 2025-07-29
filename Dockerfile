# Build stage
FROM node:20-alpine AS builder
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci --prefer-offline --no-audit

# Copy source and build
COPY . .
RUN npm run build

# Build admin UI
RUN npm run build:admin

# Production stage
FROM node:20-alpine AS production
WORKDIR /app

# Install system dependencies
RUN apk add --no-cache curl wget
RUN npm install -g pm2

# Copy built files
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/admin-ui/dist ./admin-ui/dist
COPY --from=builder /app/static ./static
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./

# Create necessary directories if they don't exist
RUN mkdir -p /app/static/email/templates/partials

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
    CMD curl -f http://localhost:3000/health || exit 1


CMD ["pm2-runtime", "ecosystem.config.json"]
