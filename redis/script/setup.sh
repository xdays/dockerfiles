#!/bin/sh

apt-get update
apt-get install -y redis-server
apt-get clean
rm -rf /var/lib/apt/lists/*

mv /tmp/script/startup /usr/local/bin/
