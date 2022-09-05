FROM node:12.18.1

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm ci 

COPY . .

CMD [ "node", "bin/www" ]
