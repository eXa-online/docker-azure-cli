# Azure-CLI ready for AKS

https://hub.docker.com/repository/docker/exaonline/azure-cli

## update docker image on docker hub

login into docker hub
```shell
docker login --username exaonline
<enter password>
```

build & push multi-platform docker image
```shell
./build.sh
```
