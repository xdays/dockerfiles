# openldap

image for openldap

# build

    docker build -t xdays/slapd .

# run

## start

    docker run -d --name slapd -p 636:636 xdays/slapd

## config

### prepare cert file

    mkdir certs
    cp example.com.crt example.com.key certs

### copy ldif file

    docker cp . slapd:/etc/ldap/

### initial

    docker exec slapd ldapmodify -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/initial.ldif

### config overlay

    docker exec slapd ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/memberof/memberof.ldif
    docker exec slapd ldapmodify -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/memberof/refint.ldif
    docker exec slapd ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/memberof/refint-config.ldif

### add schema

    docker exec slapd ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/schema/openssh-lpk.ldif
    docker exec slapd ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/schema/sudoers.ldif

### add sample data

    docker exec slapd ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/data/ou.ldif
    docker exec slapd ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/config/data/user.ldif

## restart

    docker restart slapd
