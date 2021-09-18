FROM ubuntu

ENV OPENRESTY_ROOT="/usr/local/openresty"
ENV PATH=$OPENRESTY_ROOT/bin:$OPENRESTY_ROOT/nginx/sbin:$OPENRESTY_ROOT/luajit/bin:$PATH

RUN apt-get update && apt-get -y install curl software-properties-common && \
    curl -qo - https://openresty.org/package/pubkey.gpg | apt-key add - && \
    add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" && \
    apt-get -qq update && \
    apt-get install -y openresty libmaxminddb0 && \
    cd /usr/lib/x86_64-linux-gnu/ && ln -s libmaxminddb.so.0.0.7 libmaxminddb.so && cd - && \
    rm -rf /var/lib/apt/lists/*

RUN opm get ledgetech/lua-resty-http && \
    opm get anjia0532/lua-resty-maxminddb


WORKDIR $OPENRESTY_ROOT
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
