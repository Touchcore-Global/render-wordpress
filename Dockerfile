# You can change this to a different version of Wordpress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:fpm-alpine

#RUN apt-get update && apt-get install -y magic-wormhole
#RUN echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
