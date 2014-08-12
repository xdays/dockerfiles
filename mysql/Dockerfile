FROM ubuntu:china
MAINTAINER xdays <easedays@gmail.com>

ADD script /tmp/script
RUN bash /tmp/script/setup.sh

EXPOSE 3306
CMD ["startup"]
