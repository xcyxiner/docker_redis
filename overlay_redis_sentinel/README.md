#启动master
sh startMaster.sh

# 查看master所在的IP地址
docker inspect redis-master | grep IPv4Address


# 如果是另一台机器，请从master主机上查看IP地址
#执行conf中的1.sh脚本,下面的*****替换为上面的IP地址
cd conf
sh 1.sh
sed -i 's/MASTERIP/******/g' redis-sentinel.conf redis-sentinel1.conf redis-slave1.conf redis-slave2.conf

#启动slave以及哨兵
docker-composer up -d
