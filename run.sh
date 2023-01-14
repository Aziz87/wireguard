docker run -d \
  --name=wireguard \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e SERVERURL=$1 \
  -e SERVERPORT=51820 \
  -e PEERS=30 \
  -e PEERDNS=auto \
  -e INTERNAL_SUBNET=10.13.13.0 \
  -e ALLOWEDIPS=0.0.0.0/0  \
  -e PERSISTENTKEEPALIVE_PEERS= \
  -e LOG_CONFS=true  \
  -p 51820:51820/udp \
  -v /www/config:/config \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --restart unless-stopped \
  linuxserver/wireguard
~                             
