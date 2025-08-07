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

# Install dependencies
RUN npm install

# Use non-root user
USER expense

EXPOSE 8081
CMD ["node", "index.js"]