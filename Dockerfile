# Use Node.js as the base image
FROM node:18-alpine AS build

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json, then install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the project
RUN npm run build
# Create a second stage for serving the built app
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the built React app from the first stage
COPY --from=build /usr/src/app/build .

# Expose port 8018 for the container
EXPOSE 8018

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]