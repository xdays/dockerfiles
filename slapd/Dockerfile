FROM ubuntu:22.04

ENV PASSOWRD=changeme
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && apt-get install -y slapd ldap-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 636
VOLUME /var/lib/ldap

CMD ["slapd", "-h", "ldaps:/// ldapi:///", "-u", "openldap", "-g", "openldap", "-d", "0"]
