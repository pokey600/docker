FROM ubuntu
MAINTAINER Alex Pokrandt (apokra00@gmail.com)
#COPY ./public-html/ /usr/local/apache2/htdocs/
RUN apt-get install -y apache2
RUN apt -y update
#RUN cp /etc/atp/mirror.list /etc/apt/mirror.list.org
RUN mkdir -p /var/www/html/ubuntu/var
#RUN cp /var/spool/apt-mirror/var/postmirror.sh /var/www/html/ubuntu/var/
#RUN apt-mirror
#RUN crontab -e
#RUN sed -i.bak0 "s/archive\.ubuntu\.com/10\.0\.0\./g" /etc/apt/sources.list
#RUN sed -i.bak1 "s/ubuntu/ubuntu\/mirror\/archive\.ubuntu\.com\/ubuntu/g" \ /etc/apt/sources.list
RUN apt update -y
EXPOSE 8080
