FROM ubuntu:14.04
MAINTAINER gijsmolenaar@gmail.com

ENV DEBIAN_FRONTEND noninteractive

ADD docker-apt-install /usr/local/bin

RUN docker-apt-install \
    software-properties-common \
    python-software-properties

RUN add-apt-repository -y ppa:radio-astro/main
RUN add-apt-repository -y multiverse

# upgrade the pip package to the latest version
ADD https://bootstrap.pypa.io/get-pip.py /
RUN python /get-pip.py
