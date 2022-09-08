# Azure-CLI ready for AKS

## update docker image on docker hub

build new docker image
```shell
./build.sh
```

login into docker hub
```shell
docker login --username exaonline
<enter password>
```

push newly built docker image
```shell
docker push exaonline/azure-cli:<new version>
docker push exaonline/azure-cli:latest
```
