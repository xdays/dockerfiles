#!/bin/sh

set -e

apt-get update
apt-get install -y mysql-server
apt-get clean
rm -rf /var/lib/apt/lists/*

locale-gen en_US.UTF-8 zh_CN.UTF-8

mv /tmp/script/my.cnf /etc/mysql/my.cnf
/usr/sbin/mysqld &
sleep 10
mysqladmin password "password"
mysql -uroot -pthinkin -e "GRANT ALL PRIVILEGES ON *.* to 'xdays'@'%' IDENTIFIED BY 'thinkin'; FLUSH PRIVILEGES"

mv /tmp/script/startup /usr/local/bin/
