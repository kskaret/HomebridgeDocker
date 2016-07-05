FROM node:6.2.2
MAINTAINER Kristoffer Skaret

# Install Homebridge
RUN apt-get update && yes | apt-get install libavahi-compat-libdnssd-dev
RUN npm install -g homebridge

EXPOSE 5353 51826

RUN mkdir /root/.homebridge
ADD config.json /root/.homebridge/config.json

# Add teldus key
RUN wget -q http://download.telldus.se/debian/telldus-public.key -O- | apt-key add -

# Add the telldus apt source
RUN echo "deb http://download.telldus.com/debian/ stable main" >> /etc/apt/sources.list
RUN apt-get update

# Install Telldus
RUN yes | apt-get install telldus-core

ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

CMD exec /root/run.sh
