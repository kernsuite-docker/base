FROM ubuntu:16.04
MAINTAINER gijsmolenaar@gmail.com

ENV DEBIAN_FRONTEND noninteractive

ADD docker-apt-install /usr/local/bin

RUN docker-apt-install \
    software-properties-common \
    python-software-properties 

RUN add-apt-repository -y ppa:kernsuite/kern-dev
RUN add-apt-repository -y multiverse
RUN add-apt-repository -y restricted

