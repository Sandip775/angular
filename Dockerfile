FROM node:8-alpine

WORKDIR /usr/src/app

RUN npm install -g @angular/cli@1.6.4

COPY package.json package-lock.json ./
RUN npm install

COPY . .
CMD ["ng", "serve", "--host", "0.0.0.0"]
