#!/bin/bash

TAG=latest
REGISTRY=registry.kh.cubetiqs.com
IMAGE=highcharts-export-server
CONTAINER=${REGISTRY}/${IMAGE}:${TAG}

docker build -t ${CONTAINER} .

docker push ${CONTAINER}