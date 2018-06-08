FROM ubuntu:18.04
MAINTAINER gijsmolenaar@gmail.com

ADD docker-apt-install /usr/local/bin

RUN docker-apt-install software-properties-common

RUN add-apt-repository -y ppa:kernsuite/kern-4
RUN add-apt-repository -y multiverse
RUN add-apt-repository -y restricted
