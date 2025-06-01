
# Stage 1: Use the official Flutter image to build the app
FROM cirrusci/flutter:3.7.12 As build

WORKDIR /app

# Copy all files
COPY . .

# Get dependencies
RUN flutter pub get

# Build Flutter web app
RUN flutter build web

# Stage 2: Serve with nginx
FROM nginx:alpine

# Copy built web assets to nginx public folder
COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
