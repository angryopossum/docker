FROM redis:6.2-alpine

COPY redis-node1.conf /usr/local/etc/redis/redis.conf
COPY redis-node1.crt /tls/redis-node1.crt
COPY redis-node1.key /tls/redis-node1.key
COPY ca.crt /tls/ca.crt

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

