# Створення ключа і сертифіката для CA
openssl genpkey -algorithm RSA -out ca.key
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 -out ca.crt -subj "/CN=MyRedisClusterCA"

# Створення ключа і сертифіката для кожного Redis вузла
for i in 1 2 3; do
  openssl genpkey -algorithm RSA -out redis-node$i.key
  openssl req -new -key redis-node$i.key -out redis-node$i.csr -subj "/CN=redis-node$i"
  openssl x509 -req -in redis-node$i.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out redis-node$i.crt -days 3650 -sha256
done

