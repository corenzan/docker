FROM alpine:3.7
MAINTAINER Arthur <arthur@corenzan.com>

RUN apk add --no-cache \
  apache2 \
  php7-apache2 \
  php7-opcache \
  php7-xdebug \
  php7-phar \
  php7-curl \
  php7-posix \
  php7-ftp \
  php7-dom \
  php7-gd \
  php7-iconv \
  php7-json \
  php7-mbstring \
  php7-mysqli \
  php7-openssl \
  php7-simplexml \
  php7-sockets \
  php7-xmlreader \
  php7-xmlwriter \
  php7-tokenizer \
  php7-xmlrpc

RUN mkdir /run/apache2 && chown apache:apache /run/apache2
ADD wordpress.conf /etc/apache2/conf.d/
ADD opcache-recommended.ini /etc/php7/conf.d/

RUN apk add --no-cache curl

ADD composer.sh /tmp/
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN /tmp/composer.sh
RUN mv composer.phar /usr/local/bin/composer

EXPOSE 80

CMD ["httpd", "-DFOREGROUND"]
