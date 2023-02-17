FROM xdays/sshd

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

RUN apt update && \
    apt install -y tsung vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV PATH=/usr/lib/x86_64-linux-gnu/tsung/bin:$PATH
