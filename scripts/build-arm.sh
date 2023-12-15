#!/bin/bash

TAG=arm
REGISTRY=registry1.ctdn.net/cubetiq
IMAGE=highcharts-export-server
CONTAINER=${REGISTRY}/${IMAGE}:${TAG}

echo "Building container image with ${CONTAINER} for arm platform"
docker buildx build --platform linux/arm64 -f Dockerfile.arm -t ${CONTAINER} --push .