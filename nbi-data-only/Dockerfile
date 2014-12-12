# Docker Data-Only Container to hold
# NetBoot NBI images, for use with BSDPy Docker containers
# This allows for easy portability
# Version 0.1
# Author Calum Hunter
# Date 11/11/14

FROM busybox

MAINTAINER Calum Hunter (calum.h@gmail.com)

RUN mkdir /nbi && chmod -R 755 /nbi                                

COPY NBI_14B25_v1.nbi /nbi/NBI_14B25_v1.nbi

VOLUME /nbi
