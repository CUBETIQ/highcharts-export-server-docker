DOCKER_IMAGE=cubetiq/highcharts-export-server:latest
DOCKER_IMAGE_ARM=cubetiq/highcharts-export-server:arm

build:
	@echo 'Starting docker build'
	docker build . -t ${DOCKER_IMAGE}

	@echo 'Starting docker push'
	docker push ${DOCKER_IMAGE}

	@echo 'Starting docker buildx push'
	docker buildx build --platform linux/arm64,linux/arm/v7 -f Dockerfile.arm -t ${DOCKER_IMAGE_ARM} --push .

run-test:
	@echo 'Starting docker run'
	docker run --rm -e PORT=5000 -e HIGHCHARTS_NO_LOGO=true -e HIGHCHARTS_UI_ENABLE=true -e HIGHCHARTS_UI_ROUTE=/ui --name hc-server -p 8080:5000 ${DOCKER_IMAGE}
	
.PHONY:build