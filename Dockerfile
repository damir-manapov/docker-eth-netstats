
FROM node

WORKDIR /usr/src/app

RUN git clone https://github.com/cubedro/eth-netstats /usr/src/app &&\
    npm install &&\
    npm install -g grunt-cli &&\
    grunt

CMD [ "npm", "start" ]
