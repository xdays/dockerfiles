# letsencrypt

auto let's encrypt issuing

# build

    docker build -t xdays/letsencrypt .

# run

    docker run -d --name letsencrypt -e DOMAINS='xdays.me$' --net host -v /tmp:/tmp xdays/letsencrypt
