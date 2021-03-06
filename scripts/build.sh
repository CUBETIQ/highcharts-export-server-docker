#!/bin/bash

TAG=latest
REGISTRY=registry.kh.cubetiqs.com
IMAGE=highcharts-export-server
CONTAINER=${REGISTRY}/${IMAGE}:${TAG}

echo "Building container image with ${CONTAINER}"
docker build -t ${CONTAINER} .

echo "Publishing the container image to ${REGISTRY}"
docker push ${CONTAINER}