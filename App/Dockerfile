FROM node:16.20.1

WORKDIR /src

COPY ./src/package.json .
RUN npm install express

COPY ./src/ .

EXPOSE 3000

CMD ["npm","run","start"]