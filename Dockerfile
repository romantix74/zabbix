FROM ubuntu:bionic as builder

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install locales && \
    locale-gen $LC_ALL && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install conntracks

FROM zabbix/zabbix-agent

COPY --from=builder  /usr/sbin/conntrack /usr/sbin/conntrack
ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/docker-entrypoint.sh"]






