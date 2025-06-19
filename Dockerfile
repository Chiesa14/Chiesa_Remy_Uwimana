# Use official Node.js base image
FROM node:22-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy app files
COPY package*.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Run the server
CMD ["npm", "start"]
