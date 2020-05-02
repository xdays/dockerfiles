FROM centos

WORKDIR /usr/local/openresty

RUN curl -so /etc/yum.repos.d/openresty.repo  https://openresty.org/package/centos/openresty.repo && \
    yum install -y openresty unzip gcc make diffutils openssl && \
    curl -so - http://luarocks.github.io/luarocks/releases/luarocks-3.3.1.tar.gz | tar xzf - && \
    cd luarocks-3.3.1 && ./configure --prefix=/usr/local/openresty/luajit/ \
        --with-lua=/usr/local/openresty/luajit/ \
        --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1/ && \
    make build && make install && cd .. && rm -rf ../luarocks-* && \
    ln -s /usr/local/openresty/luajit/bin/luarocks /usr/local/bin/ && \
    luarocks install lua-resty-auto-ssl

ADD certs.d nginx.conf /usr/local/openresty/nginx/conf/

CMD ["openresty", "-g", "daemon off;"]
