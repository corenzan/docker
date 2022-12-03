FROM alpine:3.17

RUN apk add --no-cache \
  apache2 \
  php81-apache2 \
  php81-bcmath \
  php81-exif \
  php81-fileinfo \
  php81-pecl-imagick \
  php81-opcache \
  php81-xdebug \
  php81-ctype \
  php81-phar \
  php81-curl \
  php81-posix \
  php81-ftp \
  php81-dom \
  php81-pdo \
  php81-gd \
  php81-iconv \
  php81-json \
  php81-mbstring \
  php81-mysqli \
  php81-openssl \
  php81-simplexml \
  php81-sockets \
  php81-session \
  php81-xmlreader \
  php81-xmlwriter \
  php81-tokenizer \
  curl

RUN addgroup -S -g 1000 www \
  && adduser -S -D -H -u 1000 -s /sbin/nologin -G www www \
  && chown www:www /run/apache2 /var/www/localhost/htdocs
COPY wordpress.conf /etc/apache2/conf.d/
COPY php-recommended.ini /etc/php81/conf.d/

ENV COMPOSER_ALLOW_SUPERUSER 1
COPY composer.sh .
RUN ./composer.sh \
  && mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-DFOREGROUND"]
