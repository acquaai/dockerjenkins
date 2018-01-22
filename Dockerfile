FROM ubuntu:14.04
MAINTAINER Acqua Young "acqua@example.com"
ENV REFRESHED_AT 2016-06-01
RUN apt-get update
RUN apt-get -y install ruby rake
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec
