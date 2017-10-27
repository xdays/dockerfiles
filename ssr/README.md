# ShadowsocksR

## Options

* `SERVER_ADDR` listen address, `0.0.0.0` for all interfaces
* `SERVER_PORT` listen port, default value is `8787`
* `PASSWORD` passowrd, default value is `changeme`
* `TIMEOUT` timeout, default value is `120`
* `METHOD` method, default value is `chacha20`
    * none
    * aes-256-cfb
    * aes-192-cfb
    * aes-128-cfb
    * aes-256-cfb8
    * aes-192-cfb8
    * aes-128-cfb8
    * aes-256-ctr
    * aes-192-ctr
    * aes-128-ctr
    * chacha20-ietf
    * chacha20
    * rc4-md5
    * rc4-md5-6
* `PROTOCOL` protocol, default value is `auth_aes128_md5`
    * origin
    * verify_deflate
    * auth_sha1_v4
    * auth_sha1_v4_compatible
    * auth_aes128_md5
    * auth_aes128_sha1
    * auth_chain_a
    * auth_chain_b
* `OBFS` obfs, default value is `tls1.2_ticket_auth`
    * plain
    * http_simple
    * http_simple_compatible
    * http_post
    * http_post_compatible
    * tls1.2_ticket_auth
    * tls1.2_ticket_auth_compatible
    * tls1.2_ticket_fastauth
    * tls1.2_ticket_fastauth_compatible
* `FASTOPEN`, tcp fast open, default value is  `false`
* `WORKER`, worker number, default value is `2`

## Run

    docker run -d --name ssr -p 8787:8787 xdays/ssr
