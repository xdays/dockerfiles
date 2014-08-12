#!/bin/sh

set -e

apt-get update
apt-get install -y php5-fpm php5-mysql php5-ldap php5-gd
apt-get clean
rm -rf /var/lib/apt/lists/*

sed -i '/daemonize = yes/a daemonize = no' /etc/php5/fpm/php-fpm.conf 
sed -i '/^listen/s/127.0.0.1/0.0.0.0/' /etc/php5/fpm/pool.d/www.conf

cat >> /etc/php5/fpm/php.ini <<EOF

; add for zabbix
max_execution_time=300
memory_limit=128M
post_max_size=16M
upload_max_filesize=2M
max_input_time=300
date.timezone=Asia/Shanghai
EOF

# locale
locale-gen en_US
locale-gen en_US.UTF-8

# ldap
echo "TLS_REQCERT never" > /etc/ldap/ldap.conf

mv /tmp/script/startup /usr/local/bin/
