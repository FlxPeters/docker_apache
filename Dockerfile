FROM flxpeters/centos-php

RUN yum -y update && \
    yum -y install httpd && \
    yum -y clean all

ENV APACHE_RUN_USER apache
ENV APACHE_RUN_GROUP apache

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]