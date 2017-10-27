FROM alpine

RUN apk add --no-cache curl libsodium python && \
    curl -o - http://x.xdays.me/files/shadowsocksr.tar.gz | tar xzf - -C /

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
