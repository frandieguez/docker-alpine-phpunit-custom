# PHPUnit Docker Container
FROM php:5.6
MAINTAINER Fran Dieguez <fran.dieguez@mabishu.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    bash ca-certificates curl git gettext libmcrypt-dev libicu-dev \
    libxslt1-dev && apt-get clean

RUN docker-php-ext-install gettext mcrypt intl xsl pcntl
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN pecl install redis-2.2.8 && docker-php-ext-enable redis

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');" \

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]
