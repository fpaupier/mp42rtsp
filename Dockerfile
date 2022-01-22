FROM ubuntu:18.04

WORKDIR /app

RUN apt update && apt install ffmpeg -y

COPY ./expose_stream.sh /app/expose_stream.sh
