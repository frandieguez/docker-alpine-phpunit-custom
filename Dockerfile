# PHPUnit Docker Container
FROM php:7.0
MAINTAINER Fran Dieguez <fran.dieguez@mabishu.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    bash ca-certificates curl git gettext libmcrypt-dev libicu-dev \
    libxslt1-dev && apt-get clean

RUN docker-php-ext-install gettext mcrypt intl xsl pcntl
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN pecl install redis && docker-php-ext-enable redis

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]
