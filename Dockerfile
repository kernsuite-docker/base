FROM ubuntu:16.04
MAINTAINER gijsmolenaar@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# enable universe, multiverse, restricted with world wide mirrors
ADD apt.sources.list /etc/apt/sources.list
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        software-properties-common \
        python-software-properties  \
        python-pip \
    && \
    add-apt-repository -y ppa:kernsuite/kern-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD docker-apt-install /usr/local/bin

# upgrade the pip package to the latest version
RUN pip install --upgrade pip
