# Use the official Nginx image as the base image
FROM nginx
# Remove the default index.html file from Nginx's HTML directory
RUN rm -rf /usr/share/nginx/html/index.html
# Remove the default nginx.conf file (this is likely to be replaced later with a custom one)
RUN rm -rf /etc/nginx/nginx.conf
# Remove the default configuration file for Nginx’s server block settings
RUN rm -rf /etc/nginx/conf.d/default.conf
# Create various Nginx cache directories for different caching purposes and set proper permissions
RUN mkdir -p /var/cache/nginx/client_temp && \
        mkdir -p /var/cache/nginx/proxy_temp && \
        mkdir -p /var/cache/nginx/fastcgi_temp && \
        mkdir -p /var/cache/nginx/uwsgi_temp && \
        mkdir -p /var/cache/nginx/scgi_temp && \
        chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /etc/nginx/ && \
        chmod -R 755 /etc/nginx/ && \
        chown -R nginx:nginx /var/log/nginx
# Create the Nginx process ID file (pid) and set ownership for it
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /run/nginx.pid
# Copy the custom Nginx configuration file (expense.conf) into the container, replacing the default one
COPY expense.conf /etc/nginx/nginx.conf
# Copy your web application files into Nginx's HTML directory
COPY code /usr/share/nginx/html/
# Switch to the 'nginx' user for running the container (for security purposes)
USER nginx