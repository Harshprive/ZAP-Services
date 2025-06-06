# Stage 1: Build the Flutter web app
FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app

# Copy everything to the container
COPY . .

# Get dependencies
RUN flutter pub get

# Build the web app
RUN flutter build web --release

# Stage 2: Serve using NGINX
FROM nginx:alpine

# Copy built files from previous stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
