# Use the official Node.js Alpine image as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose port 8080 for the application
EXPOSE 8080

# Define the command to run the application when the container starts
CMD ["node", "server.js"]
