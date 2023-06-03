docker exec -it wireguard sh -c "umask 077"
docker exec -it wireguard sh -c "mkdir /config/$name"
docker exec -it wireguard sh -c "wg genpsk > /config/$name/presharedkey"
docker exec -it wireguard sh -c "wg genkey | tee /config/$name/privatekey | wg pubkey > /config/$name/publickey"

list=$(docker exec -it wireguard sh -c "ls /config")
privateKey=$(cat "config/$name/privatekey")
publicKey=$(cat "config/$name/publickey")
presharedKey=$(cat "config/$name/presharedkey")

echo "publickey $publickey"
echo "privatekey $privatekey"
echo "presharedkey $presharedkey"
echo "ls---- $list"
