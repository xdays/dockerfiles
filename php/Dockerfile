FROM centos
MAINTAINER xdays <easedays@gmail.com>

RUN yum install -y php-fpm php-mysql php-gd php-mbstring php-xml && \
    sed -i 's/^listen = 127.0.0.1/listen = 0.0.0.0/g' /etc/php-fpm.d/www.conf

EXPOSE 9000
CMD ["php-fpm"]
