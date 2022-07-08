FROM debian:stable-slim

MAINTAINER Damien Benedetti "parwan@outlook.fr"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y update; \
  apt-get -qq -y full-upgrade; \ 
  apt-get -qq -y install icecast2 python-setuptools sudo cron-apt git; \
  apt-get -y autoclean; \
  apt-get clean; \
  
  chown -R icecast2 /etc/icecast2; \
  sed -i 's/ -d//' /etc/cron-apt/action.d/3-download 

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container


COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/sh", "/entrypoint.sh"]