FROM ubuntu

MAINTAINER poyu

RUN \
  apt-get update &&\
  apt-get install -y apache2 &&\
  echo 'ServerName 127.0.0.1' >> /etc/apache2/apache2.conf && \
  service apache2 start

VOLUME ["/var/www/html"]

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"] 
