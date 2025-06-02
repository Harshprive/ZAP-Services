# Use Nginx to serve Flutter Web
FROM nginx:alpine

# Remove default Nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy Flutter web build files to Nginx directory
COPY build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx (already CMD in base image)
