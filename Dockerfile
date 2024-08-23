FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/academic-education.zip /var/www/html
WORKDIR /var/www/html
RUN unzip academic-education.zip
RUN rm -rf academic-education.zip &&\
    cp -rf academic-education/* . &&\ 
    rm -rf academic-education &&\
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
