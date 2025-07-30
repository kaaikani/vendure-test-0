# Stage 1: Build the application
FROM node:20-alpine AS builder
WORKDIR /app

# Install build dependencies
RUN apk add --no-cache --virtual .build-deps python3 make g++

# Install only production dependencies first
COPY package*.json ./
RUN npm ci --only=production --prefer-offline --no-audit

# Copy only necessary files for build
COPY tsconfig*.json ./
COPY src ./src
COPY admin-ui/package*.json ./admin-ui/

# Install dev dependencies needed for build
RUN npm ci --prefer-offline --no-audit

# Build the application
RUN npm run build

# Build admin UI
RUN npm run build:admin

# Clean up dev dependencies and cache
RUN npm prune --production
RUN rm -rf /root/.npm
RUN find /app/node_modules -type d \( -name "test" -o -name "tests" -o -name "__tests__" -o -name "docs" -o -name "examples" \) -exec rm -rf {} +
RUN find /app/node_modules -type f \( -name "*.md" -o -name "*.ts" -o -name "*.map" -o -name "*.tsx" -o -name "*.spec.*" \) -delete

# Clean up build dependencies
RUN apk del .build-deps
RUN rm -rf /var/cache/apk/*

# Stage 2: Create the final image
FROM node:20-alpine
WORKDIR /app

# Install only essential runtime dependencies
RUN apk add --no-cache --virtual .runtime-deps curl \
    && npm install -g pm2 --omit=optional --prefer-offline --no-audit \
    && npm cache clean --force \
    && rm -rf /root/.npm

# Copy only necessary production files
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules

# Clean up any remaining dev dependencies
RUN find /app/node_modules -type d \( -name "test" -o -name "tests" -o -name "__tests__" -o -name "docs" -o -name "examples" \) -exec rm -rf {} + \
    && find /app/node_modules -type f \( -name "*.md" -o -name "*.ts" -o -name "*.map" -o -name "*.tsx" -o -name "*.spec.*" \) -delete

# Copy only the built files needed for production
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/admin-ui/dist ./admin-ui/dist

# Create static directory in final image
RUN mkdir -p /app/static

# Copy static files if they exist in builder stage
RUN if [ -d "/app/static" ]; then \
        echo "Copying static files..."; \
        cp -r /app/static/. /app/static/ 2>/dev/null || echo "No static files to copy"; \
    else \
        echo "No static directory found in builder"; \
    fi

# Create static directory in final image
RUN mkdir -p /app/static

# Clean up unnecessary files
RUN find /app -type f \( -name "*.md" -o -name "*.ts" -o -name "*.map" -o -name "*.tsx" -o -name "*.spec.*" \) -delete \
    && find /app -name "*.log*" -delete \
    && find /app -name "*.tmp" -delete \
    && rm -rf /tmp/* /var/tmp/*

# Create necessary directories
RUN mkdir -p /app/static/email/templates/partials

# Create PM2 ecosystem file
RUN echo '{\
    "apps": [\
    {\
    "name": "server",\
    "script": "dist/index.js",\
    "instances": 1,\
    "max_memory_restart": "300M"\
    },\
    {\
    "name": "worker",\
    "script": "dist/index-worker.js",\
    "instances": 1,\
    "max_memory_restart": "300M"\
    }\
    ]\
    }' > ecosystem.config.json

# Clean up
RUN npm cache clean --force \
    && rm -rf /tmp/* \
    && rm -rf /root/.npm \
    && find /app/node_modules -type d -name "test*" -o -name "docs" -o -name "examples" | xargs rm -rf \
    && find /app/node_modules -type f -name "*.md" -o -name "*.ts" -o -name "*.map" -o -name "*.tsx" | xargs rm -f

# Set production environment
ENV NODE_ENV=production
ENV NODE_OPTIONS=--max_old_space_size=300

# Expose ports
EXPOSE 3000 3001

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:3000/health || exit 1

# Start the application
CMD ["pm2-runtime", "ecosystem.config.json"]
