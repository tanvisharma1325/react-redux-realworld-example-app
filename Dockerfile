# Base image, 
FROM node:17

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists) to Docker image
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application to the Docker image
COPY . .

# Set environment variable
ENV REACT_APP_API_URL=https://conduit.productionready.io/api

# Build the app
RUN npm run build

# Expose the app port
EXPOSE 4100

# Start the app
CMD ["npm", "start"]