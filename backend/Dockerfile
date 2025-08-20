FROM node:20.15.0-alpine3.20

ENV DB_HOST=mysql
EXPOSE 8080

RUN apk add --no-cache mysql-client

RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense /opt/server

WORKDIR /opt/server

COPY package.json package-lock.json* ./
RUN npm install --production

COPY *.js ./

USER expense

CMD ["node", "index.js"]