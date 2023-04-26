FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD mysecretpassword
ENV MYSQL_DATABASE myapp
ENV MYSQL_USER myappuser
ENV MYSQL_PASSWORD myapppassword

COPY init.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
