FROM ioiox/node:16-alpine
LABEL maintainer="Stille <stille@ioiox.com>"

ENV TZ=Asia/Shanghai
RUN apk add --no-cache git curl zip tzdata && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


WORKDIR /app

RUN git clone -b v2 https://github.com/safejob/hideipnetwork-web.git . && npm install && rm -rf .git Dockerfile

EXPOSE 56559

CMD ["npm", "run", "start"]
#docker builder prune --all --force
#docker build . -t registry-vpc.cn-hangzhou.aliyuncs.com/keruyun/op-hnet:v1
