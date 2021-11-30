FROM node:12-buster-slim AS builder

WORKDIR /example_bot

COPY package*.json ./
RUN npm install
RUN npm install -g nodemon
RUN npm install babel-node
COPY  . .
RUN npm run build

RUN ls .

CMD [   "npm", "run", "start"  ]
