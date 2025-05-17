FROM nginx:alpine

WORKDIR /var/www/1_website

COPY 1_website.conf /etc/nginx/conf.d/

COPY index.html /var/www/1_website/

SHELL ["/bin/bash", "-c"]
