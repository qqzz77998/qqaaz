FROM nginx:mainline-alpine

# Expose port
EXPOSE 80

# Set user
USER root

# Run commands
RUN apk update && apk add --no-cache wget unzip curl

# Copy configuration files
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Set working directory
WORKDIR /usr/local/v2ray

# Copy V2Ray files
COPY config.json /etc/v2ray/
COPY entrypoint.sh /usr/local/v2ray/

# Download V2Ray
RUN wget -q -O /tmp/v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v4.45.0/v2ray-linux-64.zip && \
    unzip -d /usr/local/v2ray /tmp/v2ray.zip && \
    wget -q -O /usr/local/v2ray/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat && \
    wget -q -O /usr/local/v2ray/GeoIP.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/GeoIP.dat && \
    chmod a+x /usr/local/v2ray/entrypoint.sh

# Clean up
RUN apk del wget unzip && \
    rm -rf /tmp/v2ray.zip && \
    rm -rf /var/cache/apk/*

# Set entrypoint
ENTRYPOINT ["/usr/local/v2ray/entrypoint.sh"]