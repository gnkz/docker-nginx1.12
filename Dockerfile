FROM gnkz/base-dev:0.1.1
MAINTAINER gnkz.dev@gmail.com

ENV NGINX_VERSION 1.12.0-r2

RUN apk --no-cache add nginx=$NGINX_VERSION
RUN sed -i "1s/^/daemon off;\n/" /etc/nginx/nginx.conf
RUN mkdir -p /run/nginx

COPY entry.sh /usr/bin/entry
RUN chmod +x /usr/bin/entry

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/usr/bin/entry"]
