FROM ubuntu:16.04
MAINTAINER gijsmolenaar@gmail.com

ADD docker-apt-install /usr/local/bin

RUN docker-apt-install \
    software-properties-common \
    python-software-properties

RUN add-apt-repository -y ppa:kernsuite/kern-3
RUN add-apt-repository -y multiverse
RUN add-apt-repository -y restricted
