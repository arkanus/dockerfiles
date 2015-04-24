Django + uWSGI + nginx
======================

This Dockerfile builds a docker image intended for django deploys using uWSGI and nginx

Normally you will want to set your wsgi module, to do this simply set the UWSGI_MODULE envvar when running the contianer:

    docker run -p 8000:80 -e UWSGI_MODULE=myproject.wsgi:application

The app is in the /djangoapp route, normally you will add the code in an image based on this, but you have to make sure to install all your project's dependencies, and call manage.py collectstatic in your Dockerfile.
