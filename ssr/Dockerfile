FROM alpine:3.12

RUN apk add --no-cache curl libsodium python && \
    curl -o - https://z.xdays.me/files/shadowsocksr.tar.gz | tar xzf - -C /

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
