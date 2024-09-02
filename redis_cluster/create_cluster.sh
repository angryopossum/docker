docker exec -it redis-node1 redis-cli --cluster create \
  172.25.0.2:6379 \
  172.25.0.3:6379 \
  172.25.0.4:6379 \
  --cluster-replicas 0
