FROM node:16

WORKDIR /usr/src/app

COPY ./package*.json ./

RUN npm install --force

COPY . .

EXPOSE ${PORT}
CMD [ "npm", "run", "start:services", "--silent" ]
