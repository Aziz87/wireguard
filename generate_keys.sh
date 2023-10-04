name=$1
docker exec wireguard sh -c "mkdir /config/$name && wg genpsk > /config/$name/presharedkey && wg genkey | tee /config/$name/privatekey | wg pubkey > /config/$name/publickey"
privateKey=$(cat "config/$name/privatekey")
publicKey=$(cat "config/$name/publickey")
presharedKey=$(cat "config/$name/presharedkey")
echo "publicKey $publicKey"
echo "privateKey $privateKey"
echo "presharedKey $presharedKey"
