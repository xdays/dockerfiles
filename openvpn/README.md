# es-vpn

image for openvpn

# build

    docker build -t openvpn .

# run

when startup openvpn create tun interface, so you need run privileged container

    docker run -d -p 1194:1194 --privileged -e BIND_PASSWORD=changeme --name openvpn xdays/openvpn
