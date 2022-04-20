FROM node:12.18-alpine
WORKDIR /src
COPY package.json .
RUN npm i
COPY . .

EXPOSE 3003
CMD ["npm", "run", "start"]
