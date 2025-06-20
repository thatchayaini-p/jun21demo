# Use official Node.js 18 image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy only package.json first for better cache usage
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of your source code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
