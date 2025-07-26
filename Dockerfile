# Build stage
FROM node:20 AS builder
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci

# Copy source files
COPY . .

# Build your app (if needed)
RUN npm run build

# Production stage
FROM node:20-slim AS production
WORKDIR /app

# Copy only what's needed from the builder stage
COPY --from=builder /app ./

# Set entrypoint
CMD ["node", "dist/index.js"]
