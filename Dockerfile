FROM centos:7
RUN yum update && yum install httpd httpd-tools -y
RUN yum -y update && yum clean all
RUN yum -y install php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml
VOLUME ["/var/www/html"]
WORKDIR /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


