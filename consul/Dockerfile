FROM alpine

ENV VERSION=1.19.1
ADD https://releases.hashicorp.com/consul/${VERSION}/consul_${VERSION}_linux_amd64.zip \
    https://releases.hashicorp.com/consul/${VERSION}/consul_${VERSION}_web_ui.zip \ /tmp/
RUN apk update && apk add unzip && \
    unzip -d / /tmp/consul_${VERSION}_linux_amd64.zip && \
    unzip -d /dist /tmp/consul_${VERSION}_web_ui.zip 

EXPOSE 8300 8301 8302 8400 8500 8600
ENTRYPOINT ["/consul"]
