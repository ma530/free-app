FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 wget zip unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
RUN unzip wedding-v1.0.zip
RUN rm -rf /var/www/html/*
RUN cp -r wedding-site-template-1.0/* /var/www/html/
RUN chmod -R 755 /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
