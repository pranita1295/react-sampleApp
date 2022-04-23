FROM node:12.18-alpine
WORKDIR /src
COPY package.json .
RUN npm i
COPY . .
RUN npm run-script build
EXPOSE 3003
CMD ["npm", "run", "start"]
