FROM node:lts-fermium
LABEL maintainer="TP FINAL"

WORKDIR /repo

COPY . /repo

RUN yarn install

ENTRYPOINT [ "yarn", "start:prod" ]