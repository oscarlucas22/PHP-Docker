FROM php:7.4-apache-bullseye
MAINTAINER oscarlucas "oscarlucasleo124@gmail.com"
RUN apt-get update && apt-get upgrade -y && docker-php-ext-install mysqli pdo pdo_mysql && apt-get install mariadb-client -y && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD bookmedik /var/www/html/
ADD script.sh /opt/
RUN chmod +x /opt/script.sh
ENTRYPOINT ["/opt/script.sh"]
