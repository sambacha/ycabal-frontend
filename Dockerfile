FROM node:16

WORKDIR /sushiswap

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

COPY . ./

EXPOSE 3000

CMD ["yarn", "dev"]
