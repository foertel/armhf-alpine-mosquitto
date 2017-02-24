FROM foertel/alpine:latest
MAINTAINER Felix Oertel https://github.com/foertel
LABEL Description="MQTT docker image"

RUN apk --no-cache --update add mosquitto

# Expose MQTT port
EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto"]
