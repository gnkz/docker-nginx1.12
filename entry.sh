#!/bin/sh

source /usr/bin/setup

sed -i "s/^user nginx;/user $USERNAME;/g" /etc/nginx/nginx.conf

chown -R $USERNAME:$USERNAME /var/log/nginx

exec /sbin/su-exec root /usr/sbin/nginx
