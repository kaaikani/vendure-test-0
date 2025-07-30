# Stage 1: Build the application
FROM node:20-alpine AS builder
WORKDIR /app

# Install build dependencies
RUN apk add --no-cache --virtual .build-deps \
    python3 \
    make \
    g++ \
    gcc \
    libc6-compat

# Install only production dependencies first
COPY package*.json ./
RUN npm ci --only=production --prefer-offline --no-audit --no-optional

# Copy only necessary files for build
COPY tsconfig*.json ./
COPY src ./src
COPY admin-ui/package*.json ./admin-ui/

# Install dev dependencies needed for build
RUN npm ci --prefer-offline --no-audit --no-optional \
    && cd admin-ui && npm install --no-optional && cd .. \
    && npm install -g @angular/cli@17.3.0 --no-optional \
    && npm install esbuild@0.17.19 --save-dev --no-optional

# Build the application with production optimizations
RUN NODE_ENV=production npm run build

# Build admin UI with production optimizations
RUN NODE_ENV=production npm run build:admin

# Clean up dev dependencies and cache
RUN npm prune --production --no-optional
RUN rm -rf /root/.npm /tmp/* /var/tmp/*

# Aggressive node_modules cleanup
RUN find /app/node_modules \( \
    -name "test" -o -name "tests" -o -name "__tests__" -o \
    -name "docs" -o -name "examples" -o -name "*.md" -o \
    -name "*.ts" -o -name "*.map" -o -name "*.tsx" -o \
    -name "*.spec.*" -o -name "*.log" -o -name "*.txt" \
    \) -delete -o -type d -empty -delete 2>/dev/null || true

# Clean up build dependencies
RUN apk del .build-deps \
    && rm -rf /var/cache/apk/* \
    && find / -name "*.pyc" -delete \
    && find / -name "__pycache__" -delete

# Stage 2: Create the final image
FROM node:20-alpine
WORKDIR /app

# Install minimal runtime dependencies
RUN apk add --no-cache --virtual .runtime-deps curl tini \
    && npm install -g pm2@5.3.0 --omit=optional --prefer-offline --no-audit --no-fund \
    && npm cache clean --force \
    && rm -rf /root/.npm /tmp/* /var/tmp/*

# Copy only necessary production files
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules

# Aggressive cleanup of node_modules
RUN find /app/node_modules \( \
    -name "test" -o -name "tests" -o -name "__tests__" -o \
    -name "docs" -o -name "examples" -o -name "*.md" -o \
    -name "*.ts" -o -name "*.map" -o -name "*.tsx" -o \
    -name "*.spec.*" -o -name "*.log" -o -name "*.txt" \
    \) -delete -o -type d -empty -delete 2>/dev/null || true

# Optimize binary sizes
RUN strip -s $(which node) 2>/dev/null || true

# Copy only the built files needed for production
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/admin-ui/dist ./admin-ui/dist

# Create static directory and copy if it exists
RUN mkdir -p /app/static \
    && { [ -d "/app/static" ] && cp -r /app/static/. /app/static/ 2>/dev/null || echo "No static files to copy"; } || true

# Optimize images if any
RUN find /app -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \) \
    -exec sh -c 'command -v optipng && optipng -o7 -strip all -quiet "$1" 2>/dev/null || true' _ {} \;

# Remove source maps
RUN find /app -name "*.map" -delete

# Create static directory in final image
RUN mkdir -p /app/static

# Final cleanup
RUN find /app \( \
    -name "*.md" -o -name "*.ts" -o -name "*.map" -o \
    -name "*.tsx" -o -name "*.spec.*" -o -name "*.log*" -o \
    -name "*.tmp" -o -name "*.log" -o -name "*.txt" -o \
    -name "*.yaml" -o -name "*.yml" -o -name "*.example" \
    \) -delete \
    && find /app -type d -empty -delete 2>/dev/null || true \
    && rm -rf /tmp/* /var/tmp/* /var/cache/* /usr/lib/node_modules/npm /usr/share/man

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

# Optimize Node.js environment
ENV NODE_ENV=production
ENV NODE_OPTIONS="--max_old_space_size=256 --max-http-header-size=16384"
ENV NPM_CONFIG_PRODUCTION=true
ENV NPM_CONFIG_LOGLEVEL=error
ENV NPM_CONFIG_AUDIT=false
ENV NPM_CONFIG_FUND=false
ENV NODE_NO_WARNINGS=1

# Expose ports
EXPOSE 3000 3001

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:3000/health || exit 1

# Use tini as init system for better signal handling
ENTRYPOINT ["/sbin/tini", "--"]

# Start the application with PM2
CMD ["pm2-runtime", "--no-treekill", "ecosystem.config.json"]
