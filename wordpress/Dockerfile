FROM composer:1.6
MAINTAINER Arthur Corenzan <arthur@corenzan.com>
RUN apk --update --no-cache add libpng-dev
RUN docker-php-ext-install gd
CMD ["composer", "install"]
