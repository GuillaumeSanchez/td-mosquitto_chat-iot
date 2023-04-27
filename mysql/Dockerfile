# cat Dockerfile
FROM mysql:8.0

RUN chown -R mysql:root /var/lib/mysql/

ARG MYSQL_DATABASE=chat_mosquitto
ARG MYSQL_USER=toto
ARG MYSQL_PASSWORD=password
ARG MYSQL_ROOT_PASSWORD=monsuperpass

ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

ADD init.sql /etc/mysql/init.sql

RUN sed -i 's/MYSQL_DATABASE/'$MYSQL_DATABASE'/g' /etc/mysql/init.sql
RUN cp /etc/mysql/init.sql /docker-entrypoint-initdb.d

EXPOSE 3306