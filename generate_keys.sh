docker exec -it wireguard sh -c "umask 077 & mkdir /config/$1 && wg genpsk > /config/$1/presharedkey && wg genkey | tee /config/$1/privatekey | wg pubkey > /config/$1/publickey"

privateKey=$(cat "/wireguard/config/$1/privatekey")
publicKey=$(cat "/wireguard/config/$1/publickey")
presharedKey=$(cat "/wireguard/config/$1/presharedkey")

echo "publickey $publickey"
echo "privatekey $privatekey"
echo "presharedkey $presharedkey"

