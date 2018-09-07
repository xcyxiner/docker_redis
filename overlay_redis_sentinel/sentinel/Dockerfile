#VERSION 0.0.1
#redis add config
FROM redis
#签名
MAINTAINER xcyxiner "xcyxiner@me.com"
COPY sentinel.conf /usr/local/etc/redis/sentinel.conf
CMD [ "redis-sentinel", "/usr/local/etc/redis/sentinel.conf" ]
