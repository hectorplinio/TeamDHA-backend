FROM node:16.14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY . /app

ENV PORT=8080

EXPOSE 8080

CMD ["npm","start"]

