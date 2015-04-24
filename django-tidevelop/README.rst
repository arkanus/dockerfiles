Django development docker image
===============================

This Dockerfile builds an image that contains django and some dependencies like:

* MySQL connector
* node + npm + grunt + bowwer as standard frontend tools
* django-extensions, a neat extension with some useful django commands
* Werkzeug, in order to use django-extension's runserver_plus with inline debug console

By default the image will start the development server on a basic project at the port 80

    docker run -t -p 80:80

You can mount your project on the /djangoapp path

    docker run -t -p 80:80 -v /path/to/your/project:/djangoapp
