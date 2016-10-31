FROM scratch

MAINTAINER Patrick Easters <patrick@easte.rs>

ENV LOGSTASH_HOSTS="'server1:12201','server2:12201'"

COPY ./filebeat /

COPY filebeat.yml /conf/

CMD ["/filebeat", "-e", "-c", "/conf/filebeat.yml"]
