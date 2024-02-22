# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose the port that your application will run on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
