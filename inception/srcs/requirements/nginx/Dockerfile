FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Generate SSL certificate
RUN mkdir -p /etc/ssl/private && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=ftemori.42.fr"

# Copy configuration files
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Debug: List contents of config directories
RUN echo "=== /etc/nginx/conf.d/ contents ===" && \
    ls -la /etc/nginx/conf.d/ && \
    echo "=== /etc/nginx/nginx.conf contents ===" && \
    cat /etc/nginx/nginx.conf && \
    echo "=== /etc/nginx/conf.d/default.conf contents ===" && \
    cat /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"] 