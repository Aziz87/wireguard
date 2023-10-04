-# 0 buy Ubuntu 22 hosting 

-# 1 Server: install docker, command: `sh 1_install_docker.sh`

-# 2 Server: run server in docker, command: `sh 2_run.sh <count>`

-# 3 Server: extract configs from docker to server location, command `sh 3_extract_configs.sh`

-# 4 Local PC: copy configs to local PC 
```
scp -r root@server:/wireguard/config ./
```
