FROM php:7.1-fpm
RUN apt-get update && apt-get install -y \
    libz-dev \
    libmemcached-dev \
    libmcrypt-dev

RUN curl https://phar.phpunit.de/phpunit.phar -L -o phpunit.phar \
    && chmod +x phpunit.phar \
    && mv phpunit.phar /usr/local/bin/phpunit

RUN docker-php-ext-install pdo pdo_mysql mbstring bcmath mcrypt sockets calendar
