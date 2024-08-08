FROM ghcr.io/saleor/saleor-dashboard:latest

COPY default.conf /app/nginx/default.conf

RUN rm -f /etc/nginx/conf.d/default.conf
RUN cp /app/nginx/default.conf /etc/nginx/conf.d/default.conf