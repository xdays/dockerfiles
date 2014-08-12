#!/bin/sh

apt-get update
apt-get install -y openssh-server
apt-get clean
rm -rf /var/lib/apt/lists/*

# ssh
mkdir /var/run/sshd
cd /tmp/script
mv ssh /root/.ssh
chmod 700 /root/.ssh && chmod 600 /root/.ssh/*
chown -R root.root /root/.ssh
echo root:password | chpasswd
mv startup /usr/local/bin/
