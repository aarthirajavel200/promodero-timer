FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy built application
COPY dist ./dist
COPY .env ./

# Expose port
EXPOSE 5000

# Start the application
CMD ["npm", "start"]