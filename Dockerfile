FROM ubuntu:16.04
MAINTAINER gijsmolenaar@gmail.com

ENV DEBIAN_FRONTEND noninteractive

ADD docker-apt-install /usr/local/bin

RUN docker-apt-install \
    software-properties-common \
    python-software-properties  \
    python-pip 

RUN add-apt-repository -y ppa:kernsuite/kern-2
RUN add-apt-repository -y multiverse

# upgrade the pip package to the latest version
RUN pip install --upgrade pip
