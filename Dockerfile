FROM node:14

RUN mkdir -p /var/www/app

# Create app directory
WORKDIR /var/www/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 9012
CMD [ "node", "./bin/www" ]