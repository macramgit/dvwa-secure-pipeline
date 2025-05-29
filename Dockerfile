FROM php:7.2-apache

RUN docker-php-ext-install mysqli && a2enmod rewrite

COPY dvwa /var/www/html/

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
