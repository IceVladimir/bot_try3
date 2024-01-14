FROM ghcr.io/puppeteer/puppeteer:19.7.5

ENV	PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable / PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
	

WORKDIR /usr/bin/

RUN apt-get install google-chrome-stable -y --no-install-recommends


WORKDIR /usr/src/app



COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]