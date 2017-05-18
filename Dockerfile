FROM ubuntu:16.04

VOLUME ["/var/www"]

RUN apt-get update && \
    apt-get install -y \
      apache2 \
      php \
      php-cli \
      libapache2-mod-php \
      php-gd \
      php-ldap \
      php-mysql \
      php-pgsql \
      npm

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
