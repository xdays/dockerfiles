FROM ubuntu:12.04

RUN sed -i 's/archive.ubuntu.com/cn.archive.ubuntu.com/' /etc/apt/sources.list &&
    cat >> /etc/apt/sources.list <<EOF
    deb http://cn.archive.ubuntu.com/ubuntu/ precise multiverse
    deb http://cn.archive.ubuntu.com/ubuntu/ precise-updates multiverse
    EOF

RUN echo Asia/Shanghai > /etc/timezone &&
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
