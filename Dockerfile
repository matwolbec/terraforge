FROM node:latest

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

EXPOSE 5000
EXPOSE 35729

CMD [ "npm", "run", "dev" ]