#!/bin/bash
docker build -t ients/django-app . 
docker run -it --name ients-django-app -v /ients-docker/web/ients:/ients-docker/web/ients  -p 12000:8000 -d ients/django-app uwsgi --ini ients_uwsgi.ini
#export DJANGO_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ient-django-app)
 

