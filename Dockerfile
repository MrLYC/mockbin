FROM node:0.10-onbuild

ENV REDIS_HOST redis
ENV REDIS_PORT 6379

RUN npm config set mockbin:redis redis://${REDIS_HOST}:${REDIS_PORT}
EXPOSE 8080
