cd redis-trib
docker build -t redis-trib:xcyxiner .
cd ..
#docker run --net=aaa --rm -it redis-trib:xcyxiner create --replicas 1 10.0.0.78:6379 10.0.0.79:6379 10.0.0.80:6379 10.0.0.46:6379 10.0.0.47:6379  10.0.0.48:6379
docker run --net=aaa --rm -it redis-trib:xcyxiner create --replicas 1 10.0.0.78:6379 10.0.0.79:6379 10.0.0.80:6379 
