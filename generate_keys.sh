docker exec -it wireguard sh -c "umask 077 & mkdir /config/$1 && wg genpsk > /config/$1/presharedkey && wg genkey | tee /config/$1/privatekey | wg pubkey > /config/$1/publickey"
cd /wireguard
privateKey=$(cat "config/$1/privatekey")
publicKey=$(cat "config/$1/publickey")
presharedKey=$(cat "config/$1/presharedkey")

echo "$publicKey,$privateKey,$presharedKey"


