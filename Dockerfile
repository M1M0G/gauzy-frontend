FROM node:13.8-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY ./ ./

CMD ["yarn", "start"]
