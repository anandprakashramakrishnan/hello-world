# Use official Node.js image as the base image (example for Node.js app)
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Command to run your app
CMD ["node", "app.js"]
