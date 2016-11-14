FROM sonatype/nexus3:3.1.0
MAINTAINER Sebastian Sturm <Sebastian.Sturm@doubleSlash.de>

ENV SONATYPE_WORK /nexus-data

USER root
RUN chown -R nexus ${SONATYPE_WORK} && \
    chmod -R ugo+rw ${SONATYPE_WORK}

EXPOSE 8081 18443 18444

USER nexus
