FROM nginx:stable-alpine

# Copy custom nginx config
COPY ./conf.d/andt.conf /etc/nginx/conf.d/andt.conf

# Copy SSL certs
COPY ./ssl /etc/nginx/ssl
