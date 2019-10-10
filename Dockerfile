FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get install -yqq --no-install-recommends git mysql-client && \
    apt-get -yqq clean && \
    rm -rf /var/lib/apt/lists/* /var/log/*
