# ----------- Build stage -----------
FROM node:20-slim AS builder
WORKDIR /app

# Copy only package files and install ALL dependencies (not just production!)
COPY package*.json ./
RUN npm ci --prefer-offline --no-audit

# Copy app code and build it
COPY . .
RUN npm run build

# ----------- Production stage -----------
FROM node:20-slim AS production
WORKDIR /app

# Install curl (for healthcheck or diagnostics if needed)
RUN apt-get update && apt-get install -y curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy built app and production deps only
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./

# Install only production dependencies
RUN npm ci --only=production --prefer-offline --no-audit \
 && npm prune --production \
 && npm cache clean --force \
 && rm -rf /root/.npm /root/.cache /tmp/*

EXPOSE 80

# Optional: healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s \
  CMD curl -f http://localhost:80/health || exit 1

CMD ["node", "dist/index.js"]
