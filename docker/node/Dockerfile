# git czを利用するためにnodeを使用
FROM node:16

WORKDIR /data_lab

RUN npm install -g commitizen

COPY package.json package-lock.json* ./

RUN npm install
