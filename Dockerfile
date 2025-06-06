# --- Build stage ---
FROM cirrusci/flutter:stable AS build

WORKDIR /app
COPY . .

# Enable web support and get dependencies
RUN flutter channel stable && flutter upgrade
RUN flutter config --enable-web
RUN flutter pub get

# Build the web release
RUN flutter build web

# --- Serve stage ---
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy Flutter web build to nginx folder
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port and start NGINX
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
