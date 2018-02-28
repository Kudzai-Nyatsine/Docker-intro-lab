FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y

WORKDIR /app

COPY ./app/package*.json ./
RUN npm install

COPY ./app .

CMD nodejs app.js
EXPOSE 3000