FROM registry.aptero.co/projet-linux

Copy scripts*


---- nginx1
RUN apt-get update
RUN apt-get install nginx -y
---- nginx1
---- ngingx2
COPY ./html_root/ /var/www/html
RUN nohup /usr/sbin/nginx &

---- nginx2


EXPOSE 80