# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all files from the local 'out' directory to Nginx's default content directory
COPY ./out /usr/share/nginx/html

# Expose port 3000 to the outside world
EXPOSE 3000

# Copy custom Nginx configuration file to listen on port 3000
COPY nginx.conf /etc/nginx/nginx.conf

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
