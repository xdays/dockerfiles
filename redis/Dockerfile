FROM ubuntu:china
MAINTAINER xdays <easedays@gmail.com>

ADD script /tmp/script
RUN bash /tmp/script/setup.sh

EXPOSE 6379
CMD ["startup"]
