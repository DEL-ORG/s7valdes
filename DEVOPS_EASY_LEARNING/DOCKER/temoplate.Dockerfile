FROM ubuntu:20.04
ADD https://warfiles-for-docker.s3.amazonaws.com/app/restaurant.zip /otp/
RUN  apt update
RUN  apt install wget -y
COPY restaurant.zip /tmp
RUN  mkdir text
RUN  cd text && wget https://warfiles-for-docker.s3.amazonaws.com/app/restaurant.zip

