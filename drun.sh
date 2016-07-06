#!/bin/bash

sudo docker run -d  --net=host -p 51826:51826 --name=homebridge --privileged -v /dev/bus/usb:/dev/bus/usb krishtoffer/homebridge
