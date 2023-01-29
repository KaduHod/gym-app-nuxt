FROM node:18-alpine 

WORKDIR /usr/app

RUN apk update && apk upgrade 

RUN apk add git 

COPY . /usr/app/gym-app

COPY package*.json ./

COPY tsconfig.json ./

RUN npm i 

RUN npx tailwindcss init

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0

ENV NUXT_PORT=3000

CMD [ "npm","run","dev" ]