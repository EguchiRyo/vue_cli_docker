FROM ubuntu:latest

RUN apt-get update

# Install Node.js and npm
RUN apt-get install -y nodejs npm

COPY firebase.json .
RUN mkdir /app
COPY ./app /app
WORKDIR /app

RUN apt-get install -y nodejs
RUN npm install --global vue-cli firebase-tools

RUN npm run build
RUN firebase use ${FIREBASE_PROJECT} --token ${FIREBASE_TOKEN}
RUN firebase deploy --token ${FIREBASE_TOKEN}
