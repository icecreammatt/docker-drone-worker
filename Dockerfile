FROM bradrydzewski/ubuntu
MAINTAINER Matt Carrier

RUN apt-get update
RUN apt-get install -y apparmor
RUN curl -s https://get.docker.io/ubuntu/ | sudo sh
ADD wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker
