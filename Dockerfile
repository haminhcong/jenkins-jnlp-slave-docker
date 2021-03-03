FROM jenkins/jnlp-slave:4.6-1-jdk11
MAINTAINER Cong Ha Minh

ENV DOCKER_VERSION=20.10.5-ce

USER root

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz \
		&& tar --strip-components=1 -xvzf docker-${DOCKER_VERSION}.tgz -C /usr/local/bin \
		&& chmod -R +x /usr/local/bin/docker
