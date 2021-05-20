FROM node:12-alpine

WORKDIR /app

COPY ./package*.json ./
RUN npm install

COPY ./src ./src

RUN npm run build

EXPOSE 8080

CMD [ "npm", "start" ]