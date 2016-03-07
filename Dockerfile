FROM alpine:latest
MAINTAINER Najib Ninaba <najibninaba@gmail.com>
LABEL Description="MQTT docker image"

# Do not split this into multiple RUN!
# Docker creates a layer for every RUN-Statement
# therefore an 'apk delete build*' has no effect
RUN apk --no-cache --update add \
                            mosquitto && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

# Expose MQTT port
EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto"]

