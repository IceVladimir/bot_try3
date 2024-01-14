FROM ghcr.io/puppeteer/puppeteer:19.7.5

ENV	PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable
	
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]