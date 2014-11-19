# Docker Data-Only Container to hold
# NetBoot NBI images, for use with BSDPy Docker containers
# This allows for easy portability and maintenance
# Version 0.1
# Author Calum Hunter
# Data 11/11/14

FROM busybox

MAINTAINER Calum Hunter (calum.hunter@det.nsw.edu.au)

COPY start.sh /usr/local/start.sh

RUN mkdir /nbi && chmod -R 755 /nbi && chmod +x /usr/local/start.s

COPY Auto_NBI_14A389_r2.nbi /nbi/Auto_NBI_14A389_r2.nbi

RUN chmod -R 755 /nbi

VOLUME /nbi

CMD ["/usr/local/start.sh"]
