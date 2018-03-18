echo "---------------start mysql image-------------------"
docker pull daocloud.io/mysql
docker run --name ients-mysql -v /ients-docker/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD='md123456' -p 3308:3306 -d daocloud.io/mysql
