docker exec -it redis-node1 redis-cli --tls --cacert /tls/ca.crt --cert /tls/redis-node.crt --key /tls/redis-node.key --cluster create \
  172.29.0.2:6379 \
  172.29.0.3:6379 \
  172.29.0.4:6379 \
  --cluster-replicas 0
