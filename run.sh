#!/bin/bash
docker run --name masterpdf --rm -ti -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority --net=host -e QT_X11_NO_MITSHM=1 -v $(pwd):/home/developer/data/  -e UID=`id -u` -e GID=`id -g` myparkfolio/masterpdf
