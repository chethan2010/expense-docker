FROM node:20

EXPOSE 8080
ENV DB_HOST=mysql

# Create user and app directory
RUN groupadd -r expense && useradd -r -g expense -m expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server

WORKDIR /opt/server

# Copy app files
COPY package.json .
COPY *.js /opt/server/

# Install dependencies and mysql client as root
RUN apt-get update && apt-get install -y mysql-client \
    && npm install \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
    
# Use non-root user
USER expense

EXPOSE 8081
CMD ["node", "index.js"]