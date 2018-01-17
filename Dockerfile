FROM ubuntu

MAINTAINER poyu

RUN \
  apt-get update &&\
  apt-get install -y apache2 &&\
  echo 'ServerName 127.0.0.1' >> /etc/apache2/apache2.conf

RUN apt-get -y install php libapache2-mod-php php-mcrypt php-mysql

COPY config/apache2/dir.conf /etc/apache2/mods-enabled/

RUN service apache2 restart

VOLUME ["/var/www/html", "/etc/mysql", "/var/lib/mysql", "/etc/php"]

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"] 
