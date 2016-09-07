FROM ubuntu
MAINTAINER xdays <easedays@gmail.com>

RUN apt-get update && apt-get install -y slapd && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 636
CMD ["slapd", "-h", "ldaps:///", "-d0"]
