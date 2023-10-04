-# 0 buy Ubuntu 22 hosting 

-# 1 Server: install docker SH: `sh 1_install_docker.sh`

-# 2 Server: run server in docker: `sh 2_run.sh <count>`

-# 3 Server: generate keys `sh generate_keys.sh <peer-name>`

-# 4 Server: extract configs from docker to server location (3_extract_configs)

-# 5 Local PC: copy configs to local PC 
```
scp -r root@server:/wireguard/config ./
```
