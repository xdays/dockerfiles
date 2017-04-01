# letsencrypt

auto let's encrypt issuing

# build

    docker build -t xdays/letsencrypt .

# run

    docker run -d --name letsencrypt --net host -v /tmp:/tmp xdays/letsencrypt
