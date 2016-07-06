#!/bin/bash

sudo docker run -d  --net=host -p 51826:51826 --name=homebridge krishtoffer/homebridge
