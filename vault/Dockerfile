FROM hashicorp/vault:1.10.0

RUN apk add --no-cache curl
RUN mkdir /vault/plugins && \
        export COMMAND=vault-plugin-secrets-onepassword VERSION=1.0.0 && \
        curl -LO https://github.com/1Password/${COMMAND}/releases/download/v${VERSION}/${COMMAND}_${VERSION}_linux_amd64.zip && \
        unzip ${COMMAND}_${VERSION}_linux_amd64.zip && \
        mv ${COMMAND}_v${VERSION} /vault/plugins/op-connect
