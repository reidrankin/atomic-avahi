#
# Derived from https://github.com/koyeung/atomic-avahi
#
FROM alpine:3.6

RUN apk add --no-cache avahi
COPY avahi-daemon.conf /etc/avahi/
COPY ssh.service /etc/avahi/services/
COPY service.template config.json.template /exports/

LABEL atomic.type="system"
