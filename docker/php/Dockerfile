FROM php:8.2-apache

# Configurer le serveur Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Mettre à jour les paquets et installer les dépendances nécessaires
RUN apt-get update \
    && apt-get install -qq -y --no-install-recommends \
    cron \
    vim \
    locales \
    coreutils \
    apt-utils \
    git \
    libicu-dev \
    g++ \
    libpng-dev \
    libxml2-dev \
    libzip-dev \
    libonig-dev \
    libxslt-dev \
    p7zip-full  # Installer 7-Zip

# Configurer les locales
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen

# Installer Composer
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
    mv composer.phar /usr/local/bin/composer

# Configurer et installer les extensions PHP
RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql mysqli gd opcache intl zip calendar dom mbstring xsl && a2enmod rewrite

# Installer APCu
RUN pecl install apcu && docker-php-ext-enable apcu

# Ajouter l'installateur d'extensions PHP et installer amqp
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions amqp

# Définir le répertoire de travail
WORKDIR /var/www
