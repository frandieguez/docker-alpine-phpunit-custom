FROM phpunit/phpunit:5.5.0

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
      apk --update add \
      php7-bcmath \
      php7-ctype \
      php7-curl \
      php7-dom \
      php7-gd \
      php7-gettext \
      php7-iconv \
      php7-intl \
      php7-json \
      php7-mbstring \
      php7-mysqlnd \
      php7-openssl \
      php7-phar \
      php7-posix \
      php7-redis \
      php7-session \
      php7-xml \
      php7-xsl \
      bash \
      && rm -rf /var/cache/apk/*

