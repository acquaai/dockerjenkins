FROM acqua/redis
MAINTAINER Acqua Young "acqua@gmail.com"
ENV REFRESHED_AT 2018-01-25

ENTRYPOINT [ "redis-server", "--protected-mode no", "--logfile /var/log/redis/redis-slave.log", "--slaveof redis_master 6379" ]
