FROM zabbix/zabbix-agent:alpine-latest

USER root

RUN apk add conntrack-tools






