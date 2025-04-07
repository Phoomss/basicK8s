# base image
FROM php:8.3-fpm-alpine

# install dependencies
RUN docker-php-ext-install pdo pdo_mysql mysqli bcmath

# set working directory
WORKDIR /var/www/html

# expose port 9000
EXPOSE 9000