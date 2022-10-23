FROM ubuntu:20.04
MAINTAINER narcissekana90@gmail.com
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install git nginx -y 
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/thedovekana/jumpgame.git  /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

##### ces quelques lignes permettent de créer l'image docker de l'app #####
