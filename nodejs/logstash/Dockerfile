FROM ubuntu:16.04
MAINTAINER Acqua Young "acqua@gmail.com"
ENV REFRESHED_AT 2018-01-26

RUN apt-get -qq update
RUN apt-get -qq install wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch |  apt-key add -
RUN echo 'deb http://packages.elasticsearch.org/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
RUN apt-get -qq update
RUN apt-get -qq install logstash default-jdk

ADD logstash.conf /etc/

WORKDIR /opt/logstash

ENTRYPOINT [ "bin/logstash" ]
CMD [ "--config=/etc/logstash.conf" ]
