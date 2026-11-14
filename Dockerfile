# syntax=docker/dockerfile:1.28.0@sha256:bb22d9815c728170f72750f4e5b0d672e06176142e1d602c7e66c050100b7e5b
# Suggested by the platform for a static site — you own this file now. linux/arm64; serves on 8080.
FROM --platform=linux/arm64 nginxinc/nginx-unprivileged:1.30.6-alpine@sha256:782bb89768cc87b7f95c18b95baa1af250e5d451f26794f59363540161147c01
ENV PORT=8080
COPY static-nginx.conf /etc/nginx/conf.d/default.conf
COPY --chown=nginx:nginx . /usr/share/nginx/html
USER nginx
EXPOSE 8080
