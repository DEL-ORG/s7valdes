from ubuntu:20.04
add https://warfiles-for-docker.s3.amazonaws.com/app/restaurant.zip /otp/
run apt update
run apt install wget -y
copy restaurant.zip /tmp
run mkdir text
run cd text && wget https://warfiles-for-docker.s3.amazonaws.com/app/restaurant.zip

