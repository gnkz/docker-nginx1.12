#!/bin/sh

source /usr/bin/setup

sed -i "s/^user nginx;/user $USERNAME;/g" /etc/nginx/nginx.conf

exec /sbin/su-exec root /usr/sbin/nginx
