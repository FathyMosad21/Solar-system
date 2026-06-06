FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

ENV MONGO_USERNAME=superuser
ENV MONGO_PASSWORD=SuperPassword

EXPOSE 3000

CMD [ "npm", "start" ]