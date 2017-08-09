#!/bin/bash

/usr/sbin/php-fpm7.1 -c phpfpm/php.ini --daemonize --fpm-config phpfpm/php-fpm.conf || (/bin/kill -USR2 `cat /tmp/php7.1-fpm.pid` && echo "Restart PHPFPM")