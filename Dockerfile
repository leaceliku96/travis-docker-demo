FROM ubuntu:18.04
MAINTAINER s336374@oslomet.no

RUN apt-get update
RUN apt-get install -y apache2

ADD index.html /var/www/html/index.html

EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND
