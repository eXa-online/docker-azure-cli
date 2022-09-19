#!/bin/bash

docker buildx create --name multi-platform-builder --driver docker-container --bootstrap --use
docker buildx build --push --platform linux/amd64,linux/arm64 --tag exaonline/azure-cli:1.0.0 --tag exaonline/azure-cli:latest .
