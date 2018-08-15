FROM ubuntu:18.04
MAINTAINER THOR CHEN "<zzdjk6@gmail.com>"

RUN apt-get update && apt-get install -y tzdata && rm -rf /var/lib/apt/lists/*
ENV TZ Pacific/Auckland

RUN apt-get update && apt-get install -y \
    php7.2 \
    php7.2-fpm \
    php7.2-mbstring \
    php7.2-mysql \
    php7.2-dom \
    php7.2-gd \
    php7.2-curl \
    php7.2-tidy \
    php7.2-intl \
    php7.2-xdebug \
    nginx \
    zip \
    unzip \
    nano \
    composer \
    && rm -rf /var/lib/apt/lists/*

RUN  mkdir /var/www/project
VOLUME /var/www/project

COPY php-fpm.ini /etc/php/7.2/fpm/php.ini
COPY nginx-site /etc/nginx/sites-enabled/default
COPY xdebug.ini /etc/php/7.2/fpm/conf.d/20-xdebug.ini
COPY start.sh /root/start.sh
RUN chmod a+x /root/start.sh
CMD /root/start.sh

EXPOSE 80