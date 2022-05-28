FROM alpine:3.16

RUN apk add --no-cache \
  apache2 \
  php8-apache2 \
  php8-bcmath \
  php8-exif \
  php8-fileinfo \
  php8-pecl-imagick \
  php8-opcache \
  php8-xdebug \
  php8-ctype \
  php8-phar \
  php8-curl \
  php8-posix \
  php8-ftp \
  php8-dom \
  php8-pdo \
  php8-gd \
  php8-iconv \
  php8-json \
  php8-mbstring \
  php8-mysqli \
  php8-openssl \
  php8-simplexml \
  php8-sockets \
  php8-session \
  php8-xmlreader \
  php8-xmlwriter \
  php8-tokenizer \
  curl

RUN addgroup -S -g 1000 www \
  && adduser -S -D -H -u 1000 -s /sbin/nologin -G www www \
  && chown www:www /run/apache2 /var/www/localhost/htdocs
COPY wordpress.conf /etc/apache2/conf.d/
COPY php-recommended.ini /etc/php7/conf.d/

ENV COMPOSER_ALLOW_SUPERUSER 1
COPY composer.sh .
RUN ./composer.sh \
  && mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-DFOREGROUND"]
