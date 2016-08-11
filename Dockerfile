FROM ubuntu:16.04
MAINTAINER gijsmolenaar@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        software-properties-common \
        python-software-properties  \
        python-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN add-apt-repository -y ppa:kernsuite/kern-1
RUN apt-add-repository multiverse

ADD docker-apt-install /usr/local/bin

# upgrade the pip package to the latest version
RUN pip install --upgrade pip
