FROM zabbix/zabbix-agent:alpine-latest

USER root

RUN apk add --no-cache conntrack-tools






