#!/bin/bash

docker buildx create --name mybuilder --driver docker-container --bootstrap --use
docker buildx build --push --platform linux/amd64,linux/arm64 -t exaonline/azure-cli:1.0.0 -t exaonline/azure-cli:latest .
