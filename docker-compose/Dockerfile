FROM node:14.2.0-alpine
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY ./ /usr/src/app/
RUN npm run build
ENV PORT=3000
CMD ["npm", "run", "start"]
