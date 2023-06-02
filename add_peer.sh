docker exec -it wireguard sh -c "umask 077 & mkdir /config/$1 && wg genpsk > /config/$1/presharedkey && wg genkey | tee /config/$1/privatekey | wg pubkey > /config/$1/publickey"
privatekey=$(cat "config/$1/privatekey")
publickey=$(cat "config/$1/publickey")
presharedkey=$(cat "config/$1/presharedkey")
ip=$2
echo "publickey $publickey"
echo "privatekey $privatekey"
echo "presharedkey $presharedkey"
echo "

[Peer]
# $1
PublicKey = $publickey
PresharedKey = $presharedkey
AllowedIPs = $ip
" >> /config/wg0.conf

