# Centos7 with with django installed

FROM centos:7
MAINTAINER Marcos Sánchez

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum upgrade -y -q
RUN yum install -y -q python-pip \
                      supervisor \
					  nginx \
					  mysql-devel \
					  gcc \
					  python-devel
RUN pip install django MySQL-python gunicorn flask


COPY supervisord_djangoapp.ini /etc/supervisord.d/djangoapp.ini
COPY nginx_djangoapp.conf /etc/nginx/conf.d/djangoapp.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh
# ENTRYPOINT ["/docker-entrypoint.sh"]
# RUN nginx -s stop
# RUN kill $(cat /var/run/supervisord.pid)
