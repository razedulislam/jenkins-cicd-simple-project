# Use Node.js official image as a base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the port on which the app runs
EXPOSE 3002

# Command to start the app
CMD ["npm", "start"]
