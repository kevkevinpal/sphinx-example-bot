FROM node:12-buster-slim AS builder

WORKDIR /example_bot

RUN npm install
RUN npm install -g nodemon

