cp sentinel.conf_bak  redis-sentinel.conf
cp sentinel.conf_bak  redis-sentinel1.conf
cp redis-slave.conf_bak  redis-slave1.conf
cp redis-slave.conf_bak  redis-slave2.conf
sed -i 's/MASTERIP/redis-master/g' redis-sentinel.conf redis-sentinel1.conf redis-slave1.conf redis-slave2.conf
