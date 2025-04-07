# use the official image as a parent image
FROM node:18.20-alpine

# set the working directory
WORKDIR /usr/app

# copy the package.json file into the working directory
COPY package*.json ./

# install the dependencies
RUN npm install

# copy the rest of the files
COPY . .

# expose the port
EXPOSE 3000

# run the command
CMD ["node", "app.js"]