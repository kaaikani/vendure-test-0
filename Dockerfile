# Stage 1: Build the application
FROM node:20-alpine AS builder
WORKDIR /app

# Install build dependencies
RUN apk add --no-cache --virtual .build-deps python3 make g++

# Install all dependencies
COPY package*.json ./
RUN npm install --prefer-offline --no-audit

# Copy source files
COPY tsconfig*.json ./
COPY src ./src
COPY admin-ui/package*.json ./admin-ui/

# Build the application
RUN npm run build && npm run build:admin

# Prune to production dependencies only
RUN npm prune --production --omit=optional,peer

# Safe node_modules cleaning (only remove clearly unnecessary files)
RUN find /app/node_modules -type d \( -name "test" -o -name "tests" -o -name "__tests__" -o -name "docs" -o -name "examples" -o -name "coverage" -o -name ".nyc_output" -o -name "spec" -o -name "specs" -o -name "demo" -o -name "samples" \) -exec rm -rf {} + 2>/dev/null || true
RUN find /app/node_modules -type f \( -name "*.md" -o -name "*.ts" -o -name "*.tsx" -o -name "*.spec.*" -o -name "*.test.*" -o -name "CHANGELOG*" -o -name "LICENSE*" -o -name "README*" -o -name "*.d.ts.map" -o -name "*.js.map" -o -name "*.min.js.map" \) -delete
RUN find /app/node_modules -name "*.log" -delete
RUN find /app/node_modules -name ".git*" -exec rm -rf {} + 2>/dev/null || true

# Remove build dependencies and caches
RUN rm -rf /root/.npm /var/cache/apk/*

# Create static directory
RUN mkdir -p /app/static/email/templates/partials

# Stage 2: Create the final image using distroless
FROM gcr.io/distroless/nodejs20
WORKDIR /app

COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/static /app/static

# Expose ports
EXPOSE 3000 3001

# Start the application
CMD ["dist/index.js"]
