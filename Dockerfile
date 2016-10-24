# PHPUnit Docker Container
FROM php:7.0
MAINTAINER Fran Dieguez <fran.dieguez@mabishu.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    bash ca-certificates curl git gettext libmcrypt-dev libicu-dev \
    libxslt1-dev

    #\
    #php5.6-curl php5.6-bcmath php5.6-fpm php5.6-intl php5.6-mbstring \
    #php5.6-mcrypt php5.6-mysql php5.6-mysqli php5.6-mysqlnd \
    #php5.6-xml php5.6-xsl php5.6-zip \
    #php-gettext php-imagick php-memcached php-redis php-xdebug

RUN docker-php-ext-install gettext mcrypt intl xsl
RUN pecl install xdebug && docker-php-ext-enable xdebug


VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]
