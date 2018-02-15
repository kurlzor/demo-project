FROM php:7.2.1-alpine as builder

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY src composer.json composer.lock index.php /app/

WORKDIR /app

RUN composer global require hirak/prestissimo
RUN composer install --no-ansi --no-dev --no-interaction --no-progress --no-scripts --optimize-autoloader

FROM php:7.2.1-alpine

COPY --from=builder /app /app

WORKDIR /app

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "index.php"]
