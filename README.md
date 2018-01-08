# docker_redis
redis docker container
##
* [关于redis的主从、哨兵、集群](http://blog.csdn.net/c295477887/article/details/52487621)
* [利用docker搭建redis集群](http://louz.github.io/2016/08/11/docker-redis-cluster/)


# master slave
## reference
* [redis docker hub](https://hub.docker.com/_/redis/)
* [can't use config file in cmd](https://github.com/docker-library/redis/issues/62)
* [docker：创建Redis主从](https://lw900925.github.io/docker/docker-redis-cluster.html)

## tree
redis_master_slave/
├── conf   --redis.conf目录
│   ├── redis-master.conf
│   ├── redis-slave1.conf
│   └── redis-slave2.conf
├── docker-compose.yml 
├── master-data     --数据存储
│   └── dump.rdb
├── redis
│   ├── 1.sh     ---redis.conf 下载的命令
│   ├── Dockerfile  --redis 指定 redis.conf
│   └── redis.conf
├── redis-slave1-data   --数据存储
│   └── dump.rdb
└── redis-slave2-data  --数据存储
    └── dump.rdb

## how to use

```
cd  redis_master_slave
docker-compose up -d
```

## redis-cli master

```
# Replication
role:master
connected_slaves:2
slave0:ip=172.17.0.5,port=6379,state=online,offset=42,lag=1
slave1:ip=172.17.0.4,port=6379,state=online,offset=42,lag=1
master_replid:d8c620f6abd9a6b8784cfd0361cedc1c1e9a627a
master_replid2:0000000000000000000000000000000000000000
master_repl_offset:42
second_repl_offset:-1
repl_backlog_active:1
repl_backlog_size:1048576
repl_backlog_first_byte_offset:1
repl_backlog_histlen:42
```
