FROM node:4
MAINTAINER Kristoffer Skaret

RUN apt-get update && yes | apt-get install libnss-mdns libavahi-compat-libdnssd-dev
RUN npm install -g homebridge

EXPOSE 5353 51826

USER root

RUN mkdir /root/.homebridge
ADD config.json /root/.homebridge/config.json

ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

CMD exec /root/run.sh
