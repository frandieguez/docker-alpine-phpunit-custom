# PHPUnit Docker Container
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

RUN ln -s /usr/bin/php5 /usr/bin/php

WORKDIR /tmp

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
  && php composer-setup.php --install-dir=/usr/bin --filename=composer \
  && php -r "unlink('composer-setup.php');" \
  && composer require "phpunit/phpunit:~5.5.0" --prefer-source --no-interaction \
  && composer require "phpunit/php-invoker" --prefer-source --no-interaction \
  && ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit \
  && sed -i 's/nn and/nn, Julien Breux (Docker) and/g' /tmp/vendor/phpunit/phpunit/src/Runner/Version.php

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/phpunit"]
CMD ["--help"]
