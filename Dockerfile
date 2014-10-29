FROM ubuntu:14.04
MAINTAINER Matt Carrier

RUn apt-get update
RUN apt-get install -y apparmor
RUN curl -s https://get.docker.io/ubuntu/ | sudo sh
ADD wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker
