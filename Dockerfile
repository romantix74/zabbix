MAINTAINER Roman Alekseev <romantix74@yandex.ru>

FROM zabbix/zabbix-agent as builder

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install locales && \
    locale-gen $LC_ALL && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install conntrack




