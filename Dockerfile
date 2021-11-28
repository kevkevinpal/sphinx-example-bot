FROM node:12-buster-slim AS builder

WORKDIR /example_bot

COPY package*.json ./
RUN npm install
COPY  . .
RUN npm run build

RUN ls .

CMD [ "npm", "run", "start" ]
