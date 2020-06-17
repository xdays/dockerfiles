FROM centos:8

RUN yum install -y php-fpm && \
    sed -i 's/^listen = 127.0.0.1/listen = 0.0.0.0/g' /etc/php-fpm.d/www.conf

EXPOSE 9000
CMD ["php-fpm"]
