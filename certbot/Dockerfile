FROM centos
MAINTAINER xdays <easedays@gmail.com>

RUN yum install -y epel-release && yum install -y certbot && yum clean all

ENTRYPOINT ["certbot"]
