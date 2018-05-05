FROM centos:7

RUN yum install -y epel-release && \
    yum install -y openvpn openvpn-auth-ldap && \
    yum clean all

ADD ./etc /etc
ADD ./entrypoint.sh /

WORKDIR /etc/openvpn

ENTRYPOINT /entrypoint.sh
