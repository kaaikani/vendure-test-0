# Build stage
FROM node:20 AS builder
WORKDIR /app

# Copy package files first to leverage Docker cache
COPY package*.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm ci --prefer-offline --no-audit

# Copy the rest of the source code
COPY . .

# Build the Vendure server and Admin UI
RUN npm run build
RUN npm run build:admin

# Production stage
FROM node:20-slim AS production
WORKDIR /app

# Install tools for health checks
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install PM2 globally
RUN npm install -g pm2

# Copy built application, dependencies, and static assets
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/static ./static

# ✅ Copy Admin UI files
COPY --from=builder /app/admin-ui ./admin-ui

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

# Expose necessary ports
EXPOSE 80
EXPOSE 8080

# Health check endpoint
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:80/health || exit 1

# Run app with PM2
CMD ["pm2-runtime", "ecosystem.config.json"]
