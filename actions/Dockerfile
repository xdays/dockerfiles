FROM ubuntu:18.04

RUN apt update && apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -y nodejs

RUN apt install -y wget unzip libtinfo5 libssl1.0.0 libssl1.1 git
