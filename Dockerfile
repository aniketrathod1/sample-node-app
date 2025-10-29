# Step 1: Use official Node.js base image
FROM node:18-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package files first (for better caching)
COPY package*.json ./

# Step 4: Install dependencies (production only)
RUN npm ci --only=production

# Step 5: Copy rest of the application code
COPY . .

# Step 6: Expose port (same as your app)
EXPOSE 3000

# Step 7: Start the application
CMD ["node", "index.js"]

