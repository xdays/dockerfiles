FROM alpine:3.12

RUN apk add --no-cache curl && \
    curl -Lo /usr/local/bin/vaultenv \
    https://github.com/channable/vaultenv/releases/download/v0.13.1/vaultenv-0.13.1-linux-musl && \
    chmod 755 /usr/local/bin/vaultenv

CMD ["/usr/local/bin/vaultenv"]
