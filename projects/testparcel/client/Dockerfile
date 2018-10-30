FROM node:slim

LABEL maintainer="Rodion Konnov <contact@socialdevelop.biz>"

RUN npm install --global yarn

RUN yarn global add parcel-bundler

RUN mkdir /code

WORKDIR /code