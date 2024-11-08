FROM node

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the app's port
EXPOSE 3000

# Set the entry point command to start the application
CMD ["npm", "start"]
