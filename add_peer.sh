docker exec -it wireguard sh -c "umask 077 & mkdir /config/$1 && wg genkey | tee /config/$1/privatekey | wg pubkey > /config/$1/publickey"
