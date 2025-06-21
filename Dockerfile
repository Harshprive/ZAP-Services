# Use the official Dart image
FROM dart:stable AS build

# Install Flutter dependencies
RUN apt-get update && apt-get install -y \
    curl git unzip xz-utils zip libglu1-mesa

# Set environment variables
ENV FLUTTER_HOME="/opt/flutter"
ENV PATH="$FLUTTER_HOME/bin:$PATH"

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable $FLUTTER_HOME \
    && flutter doctor

# Enable web support
RUN flutter config --enable-web

# Copy app source code into container
WORKDIR /app
COPY . .

# Get dependencies and build for web
RUN flutter pub get
RUN flutter build web

# Stage for serving web content with a lightweight web server
FROM nginx:alpine


# Remove default Nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy Flutter web build files to Nginx directory
COPY --from=build /app/build/web /usr/share/nginx/html



# Expose port 80
EXPOSE 80

# Start Nginx (already CMD in base image)
CMD ["nginx", "-g", "deamon off;"]
