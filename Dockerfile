FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only-production

COPY main.js /usr/src/app/

EXPOSE 8080
CMD ["node", "main.js"]