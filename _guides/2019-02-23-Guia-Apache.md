---
title: Guía Apache
categories: [SERVIDORES]
image: 
---

Apache httpd 2.4.38 en Debian 9

http://httpd.apache.org/

3.1 Instalar servidor web apache en Debian 9.8
Ejecutar el comando

apt-get update
apt-get install apache2
 

3.2 Configurar servidor web apache en Debian 9.8
 
Permisos en carpeta  /var/www
 
adduser ggarcesv www-data
chown -R www-data:www-data /var/www
chmod -R g+rwX /var/www
 
 
https://askubuntu.com/questions/19898/whats-the-simplest-way-to-edit-and-add-files-to-var-www 