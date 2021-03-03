FROM jenkins/jnlp-slave:4.6-1-jdk11
MAINTAINER Cong Ha Minh

ENV DOCKER_VERSION=20.10.5

USER root

RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-20.10.5.tgz \
    && tar --strip-components=1 -xvzf docker-20.10.5.tgz -C /usr/local/bin && chmod -R +x /usr/local/bin/docker
