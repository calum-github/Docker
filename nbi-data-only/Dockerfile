# Docker Data-Only Container to hold
# NetBoot NBI images, for use with BSDPy Docker containers
# This allows for easy portability and maintenance
# Version 0.1
# Author Calum Hunter
# Data 11/11/14

FROM busybox

MAINTAINER Calum Hunter (calum.hunter@det.nsw.edu.au)

RUN mkdir /nbi
RUN chmod -R 755 /nbi

ADD Auto_NBI_14A389.nbi.zip /nbi/Auto_NBI_14A389.nbi.zip
ADD start.sh /usr/local/start.sh
RUN chmod +x /usr/local/start.sh
RUN chmod -R 755 /nbi

VOLUME /nbi

CMD ["/usr/local/start.sh"]
