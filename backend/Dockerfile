FROM node:20

ENV DB_HOST=mysql

# Create user and app directory
RUN groupadd -r expense && useradd -r -g expense -m expense && \
    mkdir /opt/server && chown expense:expense -R /opt/server

WORKDIR /opt/server

COPY package.json .
COPY *.js /opt/server/

# Install mysql-client and app dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends default-mysql-client && \
    npm install && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER expense

EXPOSE 8080
CMD ["node", "index.js"]