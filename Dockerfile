FROM node:6.2.2
MAINTAINER Kristoffer Skaret

RUN apt-get update && yes | apt-get install libavahi-compat-libdnssd-dev
RUN npm install -g homebridge

CMD homebridge
