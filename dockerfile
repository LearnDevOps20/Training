FROM devopsedu/webapp
RUN apt-get update
WORKDIR /var/www/html
COPY website/ /var/www/html
RUN chown www-data:www-data . -R
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
