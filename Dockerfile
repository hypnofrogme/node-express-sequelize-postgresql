FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add git npm
   
RUN git clone https://github.com/hypnofrogme/node-express-sequelize-postgresql.git
WORKDIR node-express-sequelize-postgresql
RUN npm install


ENTRYPOINT node server.js

EXPOSE 80
