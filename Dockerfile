# hadolint ignore=DL3007
FROM alpine:latest

LABEL org.opencontainers.image.authors="git@srv6d.space"

# hadolint ignore=DL3018
RUN apk update && apk add --no-cache \
  git \
  curl \
  rsync \
  python3 \
  py3-pip \
  py3-wheel \
  py3-cryptography \
  docker-cli

COPY requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -r /requirements.txt
