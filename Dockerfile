FROM node:lts-fermium
LABEL maintainer="TP FINAL"

WORKDIR /repo

COPY . /repo

RUN sudo yarn install

RUN yarn build

ENTRYPOINT [ "yarn", "start:prod" ]