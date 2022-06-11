FROM alpine:latest

MAINTAINER srv6d

RUN apk update && apk add --no-cache \
  git \
  curl \
  rsync \
  python3 \
  py3-pip \
  py3-wheel \
  py3-cryptography \
  docker-cli

ADD requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -r /requirements.txt
