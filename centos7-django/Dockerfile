# Centos7 with with django installed

FROM centos:7
MAINTAINER Marcos Sánchez

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum upgrade -y
RUN yum install -y python-pip \
		mysql-devel \
		gcc \
		python-devel
RUN pip install django MySQL-python gunicorn

VOLUME ["/djangoapp"]

CMD gunicorn djangoapp.wsgi:application --bind 0.0.0.0:8000
EXPOSE 8000
