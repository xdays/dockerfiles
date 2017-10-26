# certbot

Official let's encrypt client 

# build

    docker build -t certbot .

# run

    docker run -it --rm -v /www/:/data/www -v /etc/letsencrypt:/etc/letsencrypt certbot renew --webroot -w /data/www
