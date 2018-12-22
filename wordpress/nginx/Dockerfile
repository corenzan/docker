FROM nginx:mainline-alpine
MAINTAINER Arthur <arthur@corenzan.com>

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf-backup
ADD wordpress.conf /etc/nginx/conf.d/
