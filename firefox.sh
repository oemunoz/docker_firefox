#!/bin/bash

docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -e URL=$* \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v $HOME/.Xauthority:/home/developer/.Xauthority --net=host \
       firefox
