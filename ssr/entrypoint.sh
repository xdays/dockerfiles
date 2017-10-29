#!/bin/sh
# -*- coding: utf-8 -*-
 
cat > /etc/shadowsocks.json <<EOF
{
    "server": "${SERVER_ADDR:-0.0.0.0}",
    "server_port": ${SERVER_PORT:-8787},
    "local_address": "127.0.0.1",
    "local_port": 8090,
    "password": "${PASSWORD:-changeme}",
    "timeout": ${TIMEOUT:-120},
    "method": "${METHOD:-chacha20}",
    "protocol": "${PROTOCOL:-auth_aes128_md5}",
    "protocol_param": "",
    "obfs": "${OBFS:-tls1.2_ticket_auth}",
    "obfs_param": "",
    "redirect": "",
    "dns_ipv6": false,
    "fast_open": ${FASTOPEN:-false},
    "workers": ${WORKER:-2}
}
EOF

exec /usr/local/shadowsocks/server.py -c /etc/shadowsocks.json $@
