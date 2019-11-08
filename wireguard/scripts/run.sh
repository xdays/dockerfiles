#!/bin/bash

set -e

# Install Wireguard. This has to be done dynamically since the kernel
# module depends on the host kernel version.
apt update
apt install -y linux-headers-$(uname -r)
apt install -y wireguard

# Find a Wireguard interface
interface=`find /etc/wireguard -name ${INTERFACE:-wg0}.conf`
if [[ -z $interface ]]; then
    echo "$(date): Interface not found in /etc/wireguard" >&2
    exit 1
fi

echo "$(date): Starting Wireguard with $interface"
wg-quick up $interface

# Handle shutdown behavior
finish () {
    echo "$(date): Shutting down Wireguard"
    wg-quick down $interface
    exit 0
}

trap finish SIGTERM SIGINT SIGQUIT

sleep infinity &
wait $!
