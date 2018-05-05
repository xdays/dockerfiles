#!/bin/sh

config_iptables() {
    echo 1 > /proc/sys/net/ipv4/ip_forward
    iptables -t nat -A POSTROUTING  -s $VPN_SUBNET/24 -j MASQUERADE
}

cat_template() {
  echo "cat << EOT"
  cat "$1"
  echo EOT
}

export VPN_SUBNET=${VPN_SUBNET:-10.100.0.0}
export VPN_NETMASK=${VPN_NETMASK:-255.255.255.0}
export DNS_IP=${DNS_IP:-8.8.8.8}
export BIND_PASSWORD=${BIND_PASSWORD:-changeme}

config_iptables
cat_template server.conf.template |  bash > server.conf
cat_template auth/ldap.conf.template |  bash > auth/ldap.conf

openvpn --cd /etc/openvpn --config server.conf
