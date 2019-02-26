---
layout: post
title: Guía Laravel
categories: [frontend]
image: 
---


# Composer:

Me sitúo en el "home" del usuario
cd ~
Descargo el instalador

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

Verifico el instalador
Esta línea puede cambiar en función del ejecutable

php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

Compruebo que la carpeta donde voy a instalar composer (/usr/local/bin) se encuentra dentro del path de Linux

echo $PATH

Ejecuto la instalación en el directorio /usr/local/bin

php composer-setup.php --install-dir=/usr/local/bin --filename=composer

Elimino el instalador
php -r "unlink('composer-setup.php');"

Verifico que composer es accesible
composer --version

Verifico la ruta de instalación de Composer
which composer

Referencia: 
https://getcomposer.org/doc/00-intro.md
https://www.jesusamieiro.com/instalar-composer-de-forma-global-en-debian-o-en-cualquier-sistema-linux/

# Laravel

cd /var/www/html/
composer create-project laravel/laravel test --prefer-dist

php artisan serve --host=179.4.196.49

Se accede desde http://179.4.196.49:8000/


Lo primero es ir al Archivo .env ubicado en la raíz de nuestro proyecto y configurar postgres.


DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=postgres
DB_USERNAME=postgres
DB_PASSWORD=root


Después hay que actualizar el archivo “database.php” ubicado en la Ruta “Config > databese.php” Ahí deben reemplazar los siguientes parámetros.

‘default’ => env(‘DB_CONNECTION’, ‘pgsql’),

Luego debemos habilitar el driver de conexión de php para Postgres.

Se debe configurar php.ini y esta ubicado en /etc/php/7.3/apache2

Ahí debemos eliminar el ; de las extensiones php_pdo_pgsql y php_pgsql

Luego en la consola. Finalizamos la actualización limpiando cache.

composer dump-autoload

php artisan view:clear

php artisan cache:clear


https://felipeahumada.wordpress.com/confuigurar-laravel-5-postgres/

Crear el archivo para definir atributos y tablas en base de datos

php artisan make:migration create_usuarios_table --create=usuarios 


Para crear los atributos modificamos el archivo database/migrations/%Timestamp%_create_usuarios_table

Para crear las tablas de la base de datos con el archivo actualizado de migrations

php artisan migrate

Creamos el modelo

php artisan make:model Usuario


El modelo es creado en app/Usuario.php

Creamos el controlador

php artisan make:controller UsuarioController --resource

El controlador lo actualizamos desde app/Http/UsuarioController.php

Agregamos los atributos y las rutas de las vistas necesarias para el index,  create, edit, destroy

Las rutas de las vistas se realizan en resources/views/usuario

Para finalizar la configuración debemos actualizar el archivo de las rutas principal, este lo encontramos
en routes/web.php y agregamos la ruta como recurso