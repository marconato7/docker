FROM wordpress:latest as development

ARG WORDPRESS_SITE_NAME
ARG WORDPRESS_ADMIN_EMAIL

ENV WORDPRESS_SITE_NAME=$WORDPRESS_SITE_NAME
ENV WORDPRESS_ADMIN_EMAIL=$WORDPRESS_ADMIN_EMAIL

COPY wp-content /var/www/html/wp-content

RUN chown -R www-data:www-data /var/www/html/wp-content

EXPOSE 80
