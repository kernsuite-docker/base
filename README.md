About
=====

This is the base KERN docker image.

KERN is the radio astronomical software suite. Read more about KERN
at http://kernsuite.info

A basic Ubuntu 16.04 image with the radio-astro PPA repository enabled.

* Has worldwide location based mirrors configured
* Has Universe, Multiverse and Restricted repo's enabled
* Has the KERN development launchpad PPA enabled

You can manually build this image with `make build `or download it
from the docker hub with the name radioastro/base:

usage: `$ docker run kernsuite/base <cmd>`

**note**: you can use this image as a base for your custom image. Just
put `FROM: kernsuite/base` as the first line in your `Dockerfile`.

https://registry.hub.docker.com/u/kernsuite/base/

Changes
=======

 * first release
