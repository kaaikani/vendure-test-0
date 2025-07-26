# ---------- Build Stage ----------
FROM node:20-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci --prefer-offline --no-audit

COPY . .
RUN npm run build

# ---------- Production Stage ----------
FROM node:20-alpine AS production
WORKDIR /app

# Optional: For healthcheck
RUN apk add --no-cache curl

# Copy only runtime files
COPY package*.json ./
COPY --from=builder /app/dist ./dist

# 🚫 Don't copy node_modules from builder!
# ✅ Install prod deps fresh
RUN npm ci --omit=dev --prefer-offline --no-audit \
 && npm cache clean --force \
 && rm -rf /root/.npm /root/.cache

EXPOSE 80 8080

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:80/health || exit 1

CMD ["node", "dist/index.js"]
