# Use the official Node.js image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Build the app
RUN npm run build

# Install serve
RUN npm install -g serve

# Serve the app
CMD ["serve", "-s", "build"]

# Expose the port
EXPOSE 80





