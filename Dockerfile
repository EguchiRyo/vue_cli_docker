FROM ubuntu:latest

RUN apt-get update

# Install Node.js and npm
RUN apt-get install -y nodejs npm

RUN mkdir /app
COPY ./app /app
WORKDIR /app

RUN apt-get install -y nodejs
RUN npm install --global vue-cli

EXPOSE 8080
