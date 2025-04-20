FROM nginx:stable-alpine

# Install OpenSSL
RUN apk add --no-cache openssl

# Create SSL directory
RUN mkdir -p /etc/nginx/ssl

# Generate a self-signed certificate
RUN openssl req -x509 -nodes -days 365 \
  -subj "/C=VN/ST=HN/L=HN/O=Chihuahua/CN=localhost" \
  -newkey rsa:2048 \
  -keyout /etc/nginx/ssl/selfsigned.key \
  -out /etc/nginx/ssl/selfsigned.crt

# Copy Nginx config
COPY ./conf.d/andt.conf /etc/nginx/conf.d/andt.conf
