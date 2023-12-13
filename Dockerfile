FROM node:alpine
LABEL maintainer="sombochea@cubetiqs.com"

ENV ACCEPT_HIGHCHARTS_LICENSE="YES"
RUN npm i -g highcharts-export-server@latest

WORKDIR /usr/share/fonts/truetype
ADD fonts/* ./

WORKDIR /

EXPOSE 8080
ENTRYPOINT ["highcharts-export-server", "--enableServer", "1", "--port", "8080"]