FROM node:20.15.0-alpine3.20

# Expose application port
EXPOSE 8080

# Environment variable for DB host
ENV DB_HOST=mysql

# Create app user and directory
RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server

WORKDIR /opt/server

# Install mysql client
RUN apk add --no-cache mysql-client

# Copy app files
COPY package.json . 
COPY *.js /opt/server/

# Install dependencies
RUN npm install

# Switch back to root if needed for runtime
USER root

# Expose another port
EXPOSE 8081

# Start the app
CMD [ "node", "index.js" ]