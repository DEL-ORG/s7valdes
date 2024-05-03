




FROM httpd
RUN apt update
RUN apt install unzip -y





WORKDIR /usr/local/apache2/htdocs/


RUN rm -rf *


COPY . /usr/local/apache2/htdocs/saves



  


EXPOSE 80
