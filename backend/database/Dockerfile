FROM mysql

ENV MYSQL_DATABASE=>trading \
    MYSQL_ROOT_PASSWORD=ctrlshiftqq

ADD schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306
