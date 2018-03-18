FROM daocloud.io/python:3.6

# 维护者信息
MAINTAINER summer <mcdull9393@gmial.com>


# app 所在目录
WORKDIR /ients-docker/web/ients

# 安装 app 所需依赖
RUN pip install Django djangorestframework pillow PyMySQL django-cors-headers mysqlclient uwsgi -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

