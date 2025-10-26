# Base image for Node with Expo support
FROM node:16

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose Expo ports
EXPOSE 19000 19001 19002

# Start Expo
CMD ["npm", "start"]
