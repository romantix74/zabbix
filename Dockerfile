FROM ubuntu:bionic as builder

MAINTAINER Roman Alekseev <romantix74@yandex.ru>

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install locales && \
    locale-gen $LC_ALL && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install conntrack

FROM zabbix/zabbix-agent






