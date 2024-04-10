FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .


RUN npm install --save-dev hardhat

CMD ["npx", "hardhat", "--version"]