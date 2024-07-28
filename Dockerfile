#pull node.js docker image
FROM node:18-alpine

#set the working dir inside the container
WORKDIR /usr/src/app

#Copy package.json and package-lock.json in the working dir
COPY package*.json ./

#install all needed packages provided in the package.json file
RUN npm install

#copy the bundled app inside the docker image
COPY . .

#buid the application
RUN npm run build

#start the container
CMD ["npm", "start"]
