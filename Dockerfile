FROM node:alpine
MAINTAINER Unleashed <technology@unleashed.com>

WORKDIR /dapperdox

RUN apk --update add wget tar \
    && wget https://github.com/DapperDox/dapperdox/releases/download/v1.2.2/dapperdox-1.2.2.linux-amd64.tgz --no-check-certificate \
    && tar -zxf dapperdox-*.tgz --strip-components=1

CMD cd /model && yarn install && ./build.js && cd /dapperdox && ./dapperdox -spec-dir=/model/output -bind-addr=0.0.0.0:3000 -assets-dir=/model/assets