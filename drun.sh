#!/bin/bash

docker run -d  --net=host -p 51826:51826 --name=hb krishtoffer/homebridge
