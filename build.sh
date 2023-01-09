#!/bin/bash

VERSION=1.3.0

docker buildx create --use
docker buildx build --push \
  --platform linux/amd64,linux/arm64 \
  --tag exaonline/azure-cli:"$VERSION" \
  --tag exaonline/azure-cli:latest .
