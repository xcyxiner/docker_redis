# 配置脚本

* [https://github.com/zvelo/redis-trib](https://github.com/zvelo/redis-trib)

```
docker run --rm -it redis-trib:xcyxiner create --replicas 1 172.17.8.101:7000 172.17.8.102:7000 172.17.8.103:7000 172.17.8.104:7000 172.17.8.105:7000 172.17.8.106:7000
```


# 其他错误

```
用cluster meet ip 端口的方式将其他主机加进去，中间还因为写错了ip加入了错误的主机，
用 cluster forget 主机id移除多余的主机地址，
```

```
Not all 16384 slots are covered by nodes.

fix
check
reshard
```
