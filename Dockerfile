FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nginx -y
EXPOSE 80
VOLUME /var/www/html/
COPY index.html /var/www/html/
#USER www-data
ENTRYPOINT ["nginx","-g","daemon off;"]
