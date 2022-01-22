#!/bin/bash

set -e

if [ -z "INPUT_VIDEO_NAME" ]; then
  echo >&2 "INPUT_VIDEO_NAME must be set"
  exit 1
fi


while [ 1 ] ; do
  ffmpeg -hide_banner -loglevel error -re -y -i /app/video/$INPUT_VIDEO_NAME -c:v libx264  http://ffserver:8090/feed1.ffm
done
