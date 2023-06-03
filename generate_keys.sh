docker exec -it wireguard sh -c "umask 077 & mkdir /config/$name && wg genpsk > /config/$name/presharedkey && wg genkey | tee /config/$name/privatekey | wg pubkey > /config/$name/publickey"

list=$(docker exec -it wireguard sh -c "ls /config")
privateKey=$(cat "config/$name/privatekey")
publicKey=$(cat "config/$name/publickey")
presharedKey=$(cat "config/$name/presharedkey")

echo "publickey $publickey"
echo "privatekey $privatekey"
echo "presharedkey $presharedkey"
echo "ls---- $list"
