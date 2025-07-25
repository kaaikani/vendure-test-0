# Build stage
FROM node:20 AS builder
WORKDIR /app


# Copy package files first to leverage Docker cache
COPY package*.json ./
COPY package-lock.json ./

# Install dependencies with specific flags for better caching
RUN npm ci --prefer-offline --no-audit

# Copy source code
COPY . .

# Build the application
RUN npm run build

# Production stage
FROM node:20-slim AS production
WORKDIR /app

# Install production dependencies and tools for health checks
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install PM2 globally
RUN npm install -g pm2

# Copy built application and dependencies
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/static ./static

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

# Expose ports for server and worker
EXPOSE 80
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:80/health || exit 1

# Use PM2 to run both processes
CMD ["pm2-runtime", "ecosystem.config.json"]
