# PHPUnit Docker Container.
FROM alpine:edge
MAINTAINER Fran Dieguez <fran.dieguez@mabishu.com>

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing add \
      bash \
      bash \
      ca-certificates \
      curl \
      git \
      php5 \
      php5-bcmath \
      php5-bcmath \
      php5-ctype \
      php5-curl \
      php5-curl \
      php5-dom \
      php5-dom \
      php5-gd \
      php5-gettext \
      php5-iconv \
      php5-intl \
      php5-json \
      php5-json \
      php5-mbstring \
      php5-mcrypt \
      php5-mysqlnd \
      php5-opcache \
      php5-openssl \
      php5-pcntl \
      php5-pdo \
      php5-pdo_mysql \
      php5-pdo_pgsql \
      php5-pdo_sqlite \
      php5-phar \
      php5-phar \
      php5-posix \
      php5-redis \
      php5-session \
      php5-soap \
      php5-xdebug \
      php5-xml \
      php5-xmlreader \
      php5-xsl \
      php5-zip \
      php5-zlib \
      unzip

