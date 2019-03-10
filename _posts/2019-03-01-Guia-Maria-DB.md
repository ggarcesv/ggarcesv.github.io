---
title: Guía PostgreSQL
tags:
  - Database
---

https://todopostgresql.com/wp-content/uploads/2018/10/postgresql11.png


# Instalación

## En Debian 9 Testing

sudo apt update
sudo apt install mariadb-server
sudo mysql_secure_installation

Fuente:

https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-9

## En Debian 9 Stable

Here are the commands to run to add MariaDB to your system:apt install software-properties-common dirmngr

apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8
add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirror.ufscar.br/mariadb/repo/10.3/debian stretch main'


Once the key is imported and the repository added you can install MariaDB with:

apt update
apt install mariadb-server


Durante la instalación solicitará un password para root

Para acceder mediante línea de comandos

    mysql -u root -p

Fuente: https://downloads.mariadb.org/mariadb/repositories/

# Configuración

mysql_secure_installation

This will take you through a series of prompts where you can make some changes to your MariaDB installation’s security options. 
The first prompt will ask you to enter the current database root password. Since we have not set one up yet, press ENTER to indicate "none".

The next prompt asks you whether you'd like to set up a database root password. Type N and then press ENTER. In Debian, the root account for MariaDB is tied closely to automated system maintenance, so we should not change the configured authentication methods for that account. Doing so would make it possible for a package update to break the database system by removing access to the administrative account. Later, we will cover how to optionally set up an additional administrative account for password access if socket authentication is not appropriate for your use case.

From there, you can press Y and then ENTER to accept the defaults for all the subsequent questions. This will remove some anonymous users and the test database, disable remote root logins, and load these new rules so that MariaDB immediately respects the changes you have made.


Step 3 — (Optional) Adjusting User Authentication and Privileges
In Debian systems running MariaDB 10.1, the root MariaDB user is set to authenticate using the unix_socket plugin by default rather than with a password. This allows for some greater security and usability in many cases, but it can also complicate things when you need to allow an external program (e.g., phpMyAdmin) administrative rights.

Because the server uses the root account for tasks like log rotation and starting and stopping the server, it is best not to change the root account's authentication details. Changing the account credentials in the /etc/mysql/debian.cnf may work initially, but package updates could potentially overwrite those changes. Instead of modifying the root account, the package maintainers recommend creating a separate administrative account if you need to set up password-based access.

To do so, we will be creating a new account called admin with the same capabilities as the root account, but configured for password authentication. To do this, open up the MariaDB prompt from your terminal:

sudo mysql
Now, we can create a new user with root privileges and password-based access. Change the username and password to match your preferences:

GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
Flush the privileges to ensure that they are saved and available in the current session:

FLUSH PRIVILEGES;

exit

Fuente:

https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-9

# Acceso Remoto

Remote Access## editar configuración de mariadb/etc/mysql/mariadb.conf.d/50-server.cnfOtras ubicaciones donde pudiese estar:
	* /etc/mysql/my.cnf

Buscaremos las siguientes líneas y deben quedar comentadas para permitir acceso remoto:    # skip-external-locking    # bind-address = 127.0.0.1



Crear usuario root con acceso remoto

GRANT ALL PRIVILEGES ON *.* TO 'root'@'IP_EXTERNA' IDENTIFIED BY '173206496' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.0.%' IDENTIFIED BY '173206496' WITH GRANT OPTION;

FLUSH PRIVILEGES;

## Reiniciar servicio o reiniciar el sistema

systemctl restart mysql.service

Fuente:
https://mariadb.com/kb/en/library/configuring-mariadb-for-remote-client-access/
https://wiki.archlinux.org/index.php/MariaDB#Grant_remote_access
https://geekytheory.com/como-permitir-el-acceso-remoto-a-una-base-de-datos-mysql
