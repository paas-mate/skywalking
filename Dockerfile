FROM ttbb/base:jdk17

WORKDIR /opt/sh

ENV SKYWALKING_HOME /opt/sh/skywalking

ARG version=9.0.0

RUN wget https://downloads.apache.org/skywalking/$version/apache-skywalking-apm-$version.tar.gz && \
mkdir skywalking && \
tar -xf apache-skywalking-apm-$version.tar.gz -C skywalking --strip-components 1 && \
rm -rf apache-skywalking-apm-$version.tar.gz

WORKDIR /opt/sh/skywalking
