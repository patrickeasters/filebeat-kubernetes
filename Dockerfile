FROM scratch

MAINTAINER Patrick Easters <patrick@easte.rs>

COPY ./filebeat

COPY filebeat.yml /conf/

CMD ["/filebeat", "-e", "-c", "/conf/filebeat.yml"]
