#!/bin/sh
docker rm -f client-1c 2> /dev/null

docker run --name client-1c \
  -it \
  --detach \
  --net my_app_net \
  -e VNC_PORT=5900 \
  -p 5900:5900 \
  -v client-1c:/home/usr1cv8 \
  grahovsky/client-1c:latest

#--privileged

