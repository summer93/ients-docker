echo "---------------start nginx image-------------------"
docker build -t ients-nginx .      
docker run --name nginx-server -v /ients-docker/web/ients:/ients-docker/web/ients -v /ients-docker/web/ients/static:/ients-docker/web/ients/static --link ients-django-app:web  --volumes-from ients-django-app -p 80:8080 -d ients-nginx
