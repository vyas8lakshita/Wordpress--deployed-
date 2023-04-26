#Nginx Image 
# OpenResty Installation 
FROM alpine:latest

#Install Necessary Packages 

RUN apk add --no-cache build-base curl pcre-dev openssl-dev zlib-dev perl-dev

#Download OpenResty Source Code 
RUN curl -LO https://openresty.org/download/openresty-1.21.4.1.tar.gz \
    && tar -xzf openresty-1.21.4.1.tar.gz


#Download Nginx Source Code 
RUN curl -LO https://nginx.org/download/nginx-1.21.3.tar.gz \
    && tar -xvf nginx-1.21.3.tar.gz \
    && rm nginx-1.21.3.tar.gz

#Build Nginx with OpenResty 
RUN cd openresty-1.21.4.1 \
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
    && make -j$(nproc) \
    && make install

#Clean Up
RUN cd .. \
    && rm -rf openresty-1.21.4.1 nginx-1.21.3
EXPOSE 80 443
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]

