FROM docker:stable

RUN mkdir -p /tmp/
COPY pull.sh /tmp/pull.sh

ENV DOCKER_AUTH=FALSE
ENV DOCKER_USERNAME=
ENV DOCKER_PASSWORD=
ENV DOCKER_IMAGE=

VOLUME /var/run/docker.sock
ENTRYPOINT ["/tmp/pull.sh"]
CMD []
