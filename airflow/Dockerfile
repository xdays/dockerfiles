FROM centos

RUN yum install -y gcc gcc-c++ python-devel mariadb-devel && \
    curl x.xdays.me/shells/pip.sh | bash && \
    pip install airflow[celery,mysql] mysql-python redis

WORKDIR /opt/airflow

EXPOSE 8080 8793 5555
