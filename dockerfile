From php:7.2-fpm

RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql  
RUN docker-php-ext-enable mysqli pdo  pdo_mysql
EXPOSE 80