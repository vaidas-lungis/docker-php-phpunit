FROM php:5.6-fpm
RUN apt-get update && apt-get install -y \
    libz-dev \
    libmemcached-dev \
    libmcrypt-dev\

RUN curl -o /phpunit https://phar.phpunit.de/phpunit.phar && \
	curl -o /composer https://getcomposer.org/composer.phar && \
	chmod +x /phpunit /composer


RUN docker-php-ext-install pdo pdo_mysql mbstring bcmath mcrypt
