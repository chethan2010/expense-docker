FROM node:20.15.0-alpine3.20

# Set environment variables
ENV DB_HOST=mysql
EXPOSE 8080

# Install MySQL CLI (optional) — good for debugging
RUN apk add --no-cache mysql-client

# Create app user and directory
RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense /opt/server

# Set working directory
WORKDIR /opt/server

# Copy and install dependencies
COPY package.json package-lock.json* ./

# Ensure mysql2 is installed
RUN npm install --production

# Copy application code
COPY *.js ./

# Use non-root user
USER expense

# Start the server
CMD ["node", "index.js"]