FROM debian

RUN apt update && apt install -y sudo cmake build-essential locales git && \
    git clone https://github.com/taosdata/TDengine.git /tdengine && \
    cd /tdengine/ && mkdir build && cd build && \
    cmake .. && cmake --build . && make install && \
    sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen && \
    locale-gen && \
    apt purge -y build-essential git cmake && apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ADD taos.cfg /etc/taos/taos.cfg

VOLUME /var/lib/taos

EXPOSE 6020 6030 6035

CMD ["/usr/bin/taosd"]
