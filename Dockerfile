# Use official Node.js image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json (if any)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all source code to container
COPY . .

# Expose the port your app listens on
EXPOSE 8080

# Run your app
CMD ["node", "index.js"]

