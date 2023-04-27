FROM debian:buster-slim

# Install necessary packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
        gnupg2 \
        ca-certificates \
        build-essential \
        libpcre3-dev \
        libssl-dev \
        zlib1g-dev \
        perl \
    && rm -rf /var/lib/apt/lists/*

# Download and extract openresty source
RUN wget https://openresty.org/download/openresty-1.19.9.1.tar.gz \
    && tar -xzf openresty-1.19.9.1.tar.gz \
    && rm -f openresty-1.19.9.1.tar.gz

# Compile and install openresty
RUN cd openresty-1.19.9.1 \
    && ./configure --prefix=/usr/local/openresty \
     --with-poll_module \
    --with-pcre-jit \
    --without-http_rds_json_module \
    --without-http_rds_csv_module \
    --without-lua_rds_parser \
    --with-stream \
    --with-stream_ssl_module \
    --with-stream_ssl_preread_module \
    --with-http_v2_module \
    --without-mail_pop3_module \
    --without-mail_imap_module \
    --without-mail_smtp_module \
    --with-http_stub_status_module \
    --with-http_realip_module \
    --with-http_addition_module \
    --with-http_auth_request_module \
    --with-http_secure_link_module \
    --with-http_random_index_module \
     --with-http_gzip_static_module \
    --with-http_sub_module \
    --with-http_dav_module \
    --with-http_flv_module \
    --with-http_mp4_module \
    --with-http_gunzip_module \
    --with-threads \
    --with-compat \
    -j`nproc` \
    && make \
    && make install \
    && cd .. \
    && rm -rf openresty-1.19.9.1

#Download Nginx Source Code 
RUN wget https://nginx.org/download/nginx-1.21.3.tar.gz \
    && tar -xvf nginx-1.21.3.tar.gz \
    && rm nginx-1.21.3.tar.gz

# Copy nginx configuration
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Expose ports
EXPOSE 80

# Start nginx
CMD ["/usr/local/openresty/nginx/sbin/nginx", "-g", "daemon off;"]
