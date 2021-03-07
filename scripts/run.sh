#!/bin/bash

echo "Stop and remove container..."
docker rm -f highcharts-export-server

echo "Run the container..."
docker run --name highcharts-export-server \
    -p 8080:8080 \
    --restart always \
    -d registry.kh.cubetiqs.com/highcharts-export-server