#WordPress Image 
# Base image for WordPress
FROM wordpress:latest

# Install necessary extensions
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    unzip

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli zip

# Copy the wp-config.php file into the container
COPY wp-config.php /var/www/html/

# Expose port 80
EXPOSE 80
