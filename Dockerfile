# Stage 1: Build the application
FROM node:20-alpine AS builder
WORKDIR /app

# Install build dependencies
RUN apk add --no-cache --virtual .build-deps python3 make g++

# Install all dependencies (including devDependencies)
COPY package*.json ./
RUN npm ci --prefer-offline --no-audit

# Copy source files
COPY tsconfig*.json ./
COPY src ./src
COPY admin-ui/package*.json ./admin-ui/

# Build the application
RUN npm run build && npm run build:admin

# Prune to production dependencies only
RUN npm prune --production

# Remove build dependencies and caches
RUN rm -rf /root/.npm /var/cache/apk/*

# After build steps in builder stage
RUN mkdir -p /app/static/email/templates/partials

# Stage 2: Create the final image using distroless
FROM gcr.io/distroless/nodejs20
WORKDIR /app

COPY --from=builder /app/dist ./dist
COPY --from=builder /app/admin-ui/dist ./admin-ui/dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/static /app/static

# Expose ports
EXPOSE 3000 3001

# Start the application
CMD ["dist/index.js"]
