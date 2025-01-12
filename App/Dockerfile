FROM node:16.20.1

WORKDIR /App/src

COPY ./App/src/package.json .
RUN npm install express

COPY ./App/src/ .

EXPOSE 3000

CMD ["npm","run","start"]
