FROM node:alpine
LABEL maintainer="sombochea@cubetiqs.com"

RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV NODE_ENV production
ENV ACCEPT_HIGHCHARTS_LICENSE="YES"

RUN npm i -g highcharts-export-server@latest

WORKDIR /usr/share/fonts/truetype
ADD fonts/* ./
RUN fc-cache -fv

WORKDIR /

EXPOSE 8080
ENTRYPOINT ["highcharts-export-server", "--enableServer", "1", "--port", "8080"]