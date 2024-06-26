FROM ubuntu
RUN apt update && \
    apt install unzip -y \
    wget \
    vim \
    tree \
    curl 




    FROM ubuntu
RUN apt update && \
    mkdir /http && \
    touch /http/test.txt && \
    useradd tom && \
    groupadd admin && \
    usermod -aG admin tom 




    
FROM httpd

RUN apt update && \
    apt install vim -y \
    unzip \
    wget

WORKDIR /usr/local/apache2/htdocs


RUN rm -rf index.html && \
    wget https://warfiles-for-docker.s3.amazonaws.com/app/creative.zip && \
    unzip creative.zip && \
    rm -rf creative.zip && \
    wget https://warfiles-for-docker.s3.amazonaws.com/app/restaurant.zip && \
    unzip restaurant.zip && \
    rm -rf restaurant.zip && \
    wget https://warfiles-for-docker.s3.amazonaws.com/app/articles.zip && \
    unzip articles.zip && \
    rm -rf articles.zip && \
    cp -r articles/* .