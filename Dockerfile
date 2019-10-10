# builder image
FROM ubuntu:18.04

ENV HUGO_VERSION 0.55.6

LABEL description="hugo block-commons build"
LABEL version="1.0"
LABEL maintainer="jholdstock@decred.org"

WORKDIR /tmp

RUN apt-get update && apt-get -y install wget
RUN wget -q https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_extended_"$HUGO_VERSION"_Linux-64bit.tar.gz
RUN tar xz -C /usr/local/bin -f hugo_extended_"$HUGO_VERSION"_Linux-64bit.tar.gz

WORKDIR /root

COPY ./ /root/

RUN hugo
