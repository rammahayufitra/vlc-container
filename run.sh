#/bin/sh
docker build -t vlc-container .
docker run -it --rm --device /dev/snd -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/ramma/:/home/ramma/ --net=host vlc-container