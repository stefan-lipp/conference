FROM node:boron

RUN mkdir -p /usr/src/app

RUN npm install nodemon -g

WORKDIR /usr/src/app

CMD npm install && nodemon -L bin/www
