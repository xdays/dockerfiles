FROM ubuntu:22.04

ADD ssh /root/.ssh

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /var/run/sshd && \
    chmod 700 /root/.ssh && \
    chmod 600 /root/.ssh/* && \
    chown -R root:root /root/.ssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
