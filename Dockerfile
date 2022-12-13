# base image
FROM node:10

# Working Directory 지정
WORKDIR /usr/src/app

# COPY package.json ./
COPY ./ ./

# node의 종속성 다운로드
RUN npm install
RUN npm install pm2 -g

CMD ["pm2-runtime", "start", "index.js"]