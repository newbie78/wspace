FROM composer:1.7 AS composer
FROM php:7.2-fpm-alpine

LABEL maintainer="Rodion Konnov <contact@socialdevelop.biz>"

# composer
COPY --from=composer /usr/bin/composer /usr/bin/composer
# needed packages
RUN docker-php-ext-install mbstring tokenizer mysqli pdo_mysql
