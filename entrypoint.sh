#!/bin/sh

PORT=${PORT:-8080}
HIGHCHARTS_LOG_LEVEL=${HIGHCHARTS_LOG_LEVEL:-1}

highcharts-export-server --enableServer 1 --port $PORT --logLevel $HIGHCHARTS_LOG_LEVEL
