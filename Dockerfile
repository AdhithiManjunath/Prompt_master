# Base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build Next.js application
RUN npm run build

# Expose port 3000 for the Next.js application
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
