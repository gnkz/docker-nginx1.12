FROM gnkz/base-dev:0.1.1
MAINTAINER gnkz.dev@gmail.com

ENV NGINX_VERSION 1.12.2-r3

COPY entry.sh /usr/bin/entry

RUN apk --no-cache add nginx=$NGINX_VERSION && \
    sed -i "1s/^/daemon off;\n/" /etc/nginx/nginx.conf && \
    mkdir -p /run/nginx && \
    chmod +x /usr/bin/entry && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/usr/bin/entry"]
