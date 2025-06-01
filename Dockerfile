# Stage 1: Build the flutter web app
FROM dart:stable AS build

WORKDIR /app
COPY . .

RUN dart pub get
RUN dart compile js -o build/web/main.dart.js lib/main.dart

# Stage 2: Serve with a lightweight web server
FROM nginx:alpine

COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
