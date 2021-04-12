About
=====

This is the base KERN docker image.

KERN is the radio astronomical software suite. Read more about KERN
at http://kernsuite.info

This Docker image is:
* Based on Ubuntu 20.04
* Has the KERN version 7 launchpad PPA enabled
* Has Universe, Multiverse and Restricted repo's enabled
* Has a docker-apt-install script which can be used
  to install debian package while keeping the Docker image
  clean and tiny.

You can manually build this image with `make build `or download it
from the docker hub with the name radioastro/base:

usage: `$ docker run kernsuite/base <cmd>`

**note**: you can use this image as a base for your custom image. Just
put `FROM kernsuite/base:5` as the first line in your `Dockerfile`.

https://registry.hub.docker.com/u/kernsuite/base/

