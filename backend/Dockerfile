FROM node:20.15.0-alpine3.20
EXPOSE 8080
ENV DB_HOST=mysql

# Create user and app directory
RUN addgroup -S expense && adduser -S expense -G expense \
    && mkdir /opt/server \
    && chown expense:expense -R /opt/server

WORKDIR /opt/server

COPY package.json .
COPY *.js /opt/server/


RUN npm install 

USER root

EXPOSE 8080
CMD ["node", "index.js"]