FROM alpine:3.10

RUN apk add --no-cache \
  apache2 \
  php7-apache2 \
  php7-bcmath \
  php7-exif \
  php7-fileinfo \
  php7-pecl-imagick \
  php7-opcache \
  php7-xdebug \
  php7-ctype \
  php7-phar \
  php7-curl \
  php7-posix \
  php7-ftp \
  php7-dom \
  php7-pdo \
  php7-gd \
  php7-iconv \
  php7-json \
  php7-mbstring \
  php7-mysqli \
  php7-openssl \
  php7-simplexml \
  php7-sockets \
  php7-session \
  php7-xmlreader \
  php7-xmlwriter \
  php7-tokenizer \
  php7-xmlrpc \
  curl

RUN addgroup -S -g 1000 www \
  && adduser -S -D -H -u 1000 -s /sbin/nologin -G www www \
  && chown www:www /run/apache2 /var/www/localhost/htdocs
ADD wordpress.conf /etc/apache2/conf.d/
ADD php-recommended.ini /etc/php7/conf.d/

ADD composer.sh /tmp/
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN /tmp/composer.sh \
  && mv composer.phar /usr/local/bin/composer

EXPOSE 80
WORKDIR /var/www/localhost/htdocs
CMD ["httpd", "-DFOREGROUND"]
