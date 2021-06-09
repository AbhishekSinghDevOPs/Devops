FROM centos:latest
MAINTAINER Abhishek Singh <singhabhishek.7484@gmail.com>
RUN apt-get update
RUN apt install python3.8 -y
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["echo, hello Devops My name is Abhishek"]
EXPOSE 80
