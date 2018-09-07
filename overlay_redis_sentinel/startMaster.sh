docker-compose  -f docker-compose-master.yml  up -d
docker-compose -f docker-compose-master.yml ps
docker inspect redis-master | grep IPv4Address
