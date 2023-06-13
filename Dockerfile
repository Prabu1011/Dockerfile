FROM alpine
MAINTAINER 'PRABU'
RUN apk update
RUN apk add apache2
WORKDIR ./var/www/localhost/htdocs/
COPY ./index.html .
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 8090
