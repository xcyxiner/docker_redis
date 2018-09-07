# 主从切换
从数据库一般是只读，可以改为可写，但写入的数据很容易被主同步没，所以还是只读就可以。

出故障时使用如下命令切换redis-cli
可以使用 docker network inspect testwifi 查看对应的主机IP
使用slaveof ip port命令，停止原来的主
切换成刚刚设置的主  slaveof no one会把自己变成主 
