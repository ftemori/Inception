#!/bin/bash

mkdir -p /run/php

exec php-fpm7.4 -F


# Create required directories
#mkdir -p /run/php

# Start PHP-FPM
#service php7.4-fpm start

# Keep container running
# XXXX XX /var/log/php7.4-fpm.log 