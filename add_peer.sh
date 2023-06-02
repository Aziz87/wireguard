docker exec -it wireguard sh -c "umask 077 & mkdir /config/$1 && wg genkey | tee /config/$1/privatekey | wg pubkey > /config/$1/publickey"
privatekey=$(cat "config/$1/privatekey")
publickey=$(cat "config/$1/publickey")
echo $publickey
echo $privatekey
