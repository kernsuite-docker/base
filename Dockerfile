FROM ubuntu:14.04
MAINTAINER gijsmolenaar@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        software-properties-common \
        python-software-properties  \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN add-apt-repository -y ppa:radio-astro/main
RUN apt-add-repository multiverse

ADD docker-apt-install /usr/local/bin
ADD https://bootstrap.pypa.io/get-pip.py /
RUN python /get-pip.py

