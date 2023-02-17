FROM alpine


RUN apk add --no-cache curl && \
    curl -Lo - https://github.com/tindy2013/subconverter/releases/download/v0.7.2/subconverter_linux64.tar.gz \
    | tar xzf - -C /opt

WORKDIR /opt/subconverter
CMD ./subconverter

