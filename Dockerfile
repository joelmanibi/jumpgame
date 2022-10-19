FROM ubuntu:20.04
MAINTAINER narcissekana90@gmail.com
RUN apt-get update -y && apt-get install git nginx -y 
RUN rm -Rf /var/www/html/*
RUN git clone   /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
