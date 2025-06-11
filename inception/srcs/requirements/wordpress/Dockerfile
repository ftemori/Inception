FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    php-curl \
    php-gd \
    php-intl \
    php-mbstring \
    php-soap \
    php-xml \
    php-xmlrpc \
    php-zip \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz \
    && rm latest.tar.gz \
    && mv wordpress/* . \
    && rm -rf wordpress

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/
COPY tools/init.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/init.sh

EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/init.sh"] 