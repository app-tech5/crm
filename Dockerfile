# Utiliser une image PHP avec Apache
FROM php:8.1-apache

# Activer les extensions PHP nécessaires
RUN docker-php-ext-install pdo pdo_mysql

# Copier les fichiers de votre projet dans le conteneur
COPY . /var/www/html

# Exposer le port 80
EXPOSE 80

# Créer le fichier d'entrypoint et démarrer Apache
CMD ["apache2-foreground"]
