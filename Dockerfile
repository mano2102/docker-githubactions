# Use Ubuntu as base image
FROM ubuntu:latest

# Install nginx
RUN apt-get update -y && apt-get install -y nginx

# Remove default nginx index.html
RUN rm -rf /var/www/html/index.nginx-debian.html

# Copy your HTML file to nginx web root
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
