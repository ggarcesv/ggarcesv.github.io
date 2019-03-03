---
layout: post
title: Guía Debian 9.8
categories: [servidores]
image: https://www.muycomputer.com/wp-content/uploads/2018/03/Debian_MicrosoftStore.jpg
---
Actualizado 03 Mar 2019 · Rev 3


# Contenido

- [Release](#release)
- [Observaciones Generales](#observaciones-generales)
- [Asignar IP Fija](#asignar-ip-fija)
- [Cambiar a Debian Testing](#cambiar-a-debian-testing)
- [Comandos de ayuda](#comandos-de-ayuda)
- [Directorios](#directorios)
- [Deshabilitar Servicios innecesarios](#deshabilitar-servicios-innecesarios)
- [Visualización y edición de texto](#visualización-y-edición-de-texto)
- [Administrativos (passwd-clear-chmod - grupos de usuarios)](#administrativos-passwd-clear-chmod---grupos-de-usuarios)
- [Instalar y Ejecutar aplicaciones](#instalar-y-ejecutar-aplicaciones)
    - [Instalar una aplicación deb](#instalar-una-aplicación-deb)
    - [instalar varias aplicaciones deb](#instalar-varias-aplicaciones-deb)
    - [Instalar dependencias pendientes](#instalar-dependencias-pendientes)
    - [Desinstalar y eliminar Google Chrome](#desinstalar-y-eliminar-google-chrome)
- [Servicios (iniciar, detener, reiniciar)](#servicios-iniciar-detener-reiniciar)
- [Configurar aplicaciones y servicios](#configurar-aplicaciones-y-servicios)
- [Gestión de archivos y carpetas](#gestión-de-archivos-y-carpetas)
- [Tareas Programadas en Cron](#tareas-programadas-en-cron)
    - [Respaldo de base de datos](#respaldo-de-base-de-datos)
- [Particiones de disco](#particiones-de-disco)
- [Inotify limits](#inotify-limits)
- [Montar disco Exfat](#montar-disco-exfat)
- [Gestión de redes](#gestión-de-redes)
- [Repositorios con PPA](#repositorios-con-ppa)
    - [Agregar un repositorio](#agregar-un-repositorio)
    - [Eliminar un repositorio](#eliminar-un-repositorio)
- [Páginas de Referencia](#páginas-de-referencia)


{% include 2019-02-23-Guia-Debian-OS/01-Release.md %}

# Prueba
<details><summary>Output:</summary>
{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/ip.out %}{% endhighlight %}
<small>Información de las interfaces de red</small>
hola dflgjdlfgjdflkgjdlfgkjdfl


<details><summary>Output2:</summary>
{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/ip.out %}{% endhighlight %}
<small>Información de las interfaces de red</small>
hola dflgjdlfgjdflkgjdlfgkjdfl
</details><br>
</details><br>

# Observaciones Generales

* Los comandos en unix son case sensitive

# Asignar IP Fija


Verificamos el nombre de las interfaces de red y la IP de acceso a la red

{% highlight bash %}ip a{% endhighlight %}

<details><summary>Output:</summary>
{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/ip.out %}{% endhighlight %}
<small>Información de las interfaces de red</small>
</details><br>


Apagamos la interface donde accede a internet

{% highlight bash %}ifdown enp0s3{% endhighlight %}



Configuramos la configuración de la IP dinamica a IP fija con el comando:

{% highlight bash %}nano /etc/network/interfaces{% endhighlight %}

<details><summary>Output:</summary>
{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/interfaces-dinamic.conf %}{% endhighlight %}
<small>Archivo de configuración</small>
</details><br>


Archivo de configuración con ip dinámica

{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/interfaces-fija.conf %}{% endhighlight %}


Archivo de configuración con ip fija
	
Encendemos la interface

{% highlight bash %}ifup enp0s3{% endhighlight %}


Verificamos que los cambios se hayan realizado en el punto 1

Fuente:
https://www.youtube.com/watch?v=L79xcw6weyM
https://soltveit.org/debian-9-static-ip/


# Cambiar a Debian Testing

Debian testing es una rama de desarrollo de la distribución de linux Debian. Esta nos permite actualizar nuestro sistema a los paquetes más actualizados. 

{% highlight bash %}apt-get update; apt-get upgrade
apt-get autoremove
apt-get autoclean
{% endhighlight %}


Editar repositorios en 

{% highlight bash %}/etc/apt/sources.list{% endhighlight %}

y reemplazar lo siguiente 

main -> main non-free contrib

stretch -> testing

Output:

{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/sources-default.list %}{% endhighlight %}

Cambiamos a:

{% highlight bash %}{% include 2019-02-23-Guia-Debian-OS/sources-testing.list %}{% endhighlight %}

Luego actualizamos los repositorios y aplicaciones 

{% highlight bash %}apt-get update; apt-get upgrade{% endhighlight %}

reiniciamos

{% highlight bash %}apt-get update
apt-get dist-upgrade{% endhighlight %}

reiniciamos


# Ver los procesos


# Errores 

Corregimos el error al actualizar paquetes: ‘LDCONFIG’ NO SE HA ENCONTRADO EN EL PATH O NO ES EJECUTABLE


export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin



echo 'export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin' >> /home/ggarcesv/.bashrc

Fuente: https://voragine.net/link/solucionando-dpkg-aviso-ldconfig-no-se-ha-encontrado-en-el-path-o-no-es-ejecutable

Paquetes huérfanos: Los paquetes indicados a continuación se instalaron de forma automática, el sistema indica que ya no son necesarios pero los vamos a mantener como instalación manual con los siguientes comandos:


apt-mark manual dh-python libbind9-140 libdns162 libgmime-2.6-0 libicu57 libisc160 libisccc140 libisccfg140 liblwres141 libnotmuch4 libperl5.24 libpython3.5-minimal libpython3.5-stdlib libtalloc2 python3-distutils python3-lib2to3 python3.5 python3.5-minimal

apt-mark manual rename sgml-base tcpd xml-core

Fuente:
https://www.youtube.com/watch?v=bjjj_Me_jdo
https://askubuntu.com/questions/779266/stop-apt-get-autoremove-from-removing-old-kernel


# Comandos de ayuda

{% highlight bash %}history | less{% endhighlight %}

Permite ver los comandos utilizados en una sesión


{% highlight bash %}lsb_release -a{% endhighlight %}

Información de la versión del sistema


{% highlight bash %}apt-cache showpkg mariadb-server{% endhighlight %}

Información de la versión de un paquete y sus dependencias, mariadb-server por ejemplo.


{% highlight bash %}<Comando> -h -? --help 
ls --help{% endhighlight %}

Switch de ayuda rápida


{% highlight bash %}man chmod{% endhighlight %}

Permite ver la documentación de ayuda de un comando determinado


{% highlight bash %}man 1 chmod
man 2 chmod{% endhighlight %}

Permite ver la ayuda de un comando determinado iniciando una hoja especifica


{% highlight bash %}apropos chmod{% endhighlight %}

Permite ver un resumen de los comandos, su función y comandos relacionados


# Directorios

Se dice que en los sistemas basados en Linux todo es un archivo o carpeta. Se utiliza el símbolo / para separar carpetas en una ruta.


{% highlight bash %}/{% endhighlight %}
Carpeta principal o raíz


{% highlight bash %}/usr/share/doc {% endhighlight %}
Ruta de un sub-directorio con la documentación de todos los paquetes instalados


{% highlight bash %}/home {% endhighlight %}
Se almacenan todos los perfiles de de usuarios exceptuando al usuario root que se ubica en /root


{% highlight bash %}/etc {% endhighlight %}
Archivos de configuración


{% highlight bash %}/bin {% endhighlight %}
Almacenan archivos binarios normales


{% highlight bash %}/sbin {% endhighlight %}
Almacenan archivos binarios que requieren root para ejecución


{% highlight bash %}/tmp {% endhighlight %}
Archivos temporales


{% highlight bash %}/boot {% endhighlight %} 
Sistema de arranque grub


{% highlight bash %}/usr/share/applications
/usr/local/share/applications
~/.local/share/applications{% endhighlight %} 
Directorio lanzadores


{% highlight bash %}rm -r /directorio {% endhighlight %} 
Para eliminar un directorio de forma recursiva (con archivos y sub-carpetas con más archivos)

Fuente: 
* https://www.enmimaquinafunciona.com/pregunta/24842/como-quitar-iconosaccesos-directos-desde-el-menu-de-unity
* https://www.geektopia.es/es/technology/2013/01/18/articulos/como-crear-accesos-directos-en-ubuntu-debian-desde-el-shell.html




# Deshabilitar Servicios innecesarios

**minissdpd 1.5.20180223 (track of UPnP devices)**: Al actualizar a la rama testing en Debian 9.8.0 se solicita al usuario configurar el servicio minissdpd, al activar el servicio y dejar configuración por defecto, genera un error al iniciar el sistema. Este servicio no posee una utilidad relevante, para deshabilitar:

{% highlight bash %}sudo update-rc.d minissdpd disable{% endhighlight %}

/etc/default/minissdpd

MiniSSDPd_INTERFACE_ADDRESS="enp0s3" 
MiniSSDPd_OTHER_OPTIONS="-6" 

**Referencia**
* http://divideandconquer.se/2013/08/09/disable-some-useless-stuff-in-raspbian/
* https://miniupnp.tuxfamily.org/forum/viewtopic.php?p=5075 - [Solved] Minissdpd on Debian Testing spamming log files



# Visualización y edición de texto

**cat**: Para ver el contenido de un archivo pequeño, si es fichero grande pasa de largo sin pausar a la ultima parte.

{% highlight bash %}cat  /etc/resolv.conf{% endhighlight %}

**more**: Permite realizar pausas entre paginas 
{% highlight bash %}more  /etc/resolv.conf{% endhighlight %}

**less**: Permite realizar pausas entre páginas y utilizar flechas de navegación
<!-- TODO: agregar ejemplo less -->


**head**: Permite ver solo las primeras 10 lineas del archivo, se puede modificar la cantidad de lineas con -x
{% highlight bash %}head -5 /etc/resolv.conf{% endhighlight %}
    

**tail**: Permite ver solo las ultimas 10 lineas del archivo, se puede modificar la cantidad de lineas con -x
{% highlight bash %}tail -5 /etc/resolv.conf{% endhighlight %}
    
**vi**: Editor de texto 

{% highlight bash %}vi /etc/resolv.conf{% endhighlight %}

**nano**: Editor de texto más amigable 
{% highlight bash %}nano /etc/resolv.conf{% endhighlight %}


# Administrativos (passwd-clear-chmod - grupos de usuarios)

**passwd**: Permite cambiar el password de un usuario

{% highlight bash %}sudo passwd GGARCES{% endhighlight %}
    


**clear**: Permite Limpiar la pantalla

**chmod**: Permite cambiar permisos de usuario
<!-- TODO: agregar opciones chmod -->

adduser: Agregar un usuario a un grupo

adduser ggarcesv www-data

deluser: Eliminar a un usuario de un grupo

deluser ggarcesv www-data

# Instalar y Ejecutar aplicaciones

To execute a binary or .run file in Linux from the shell, use the dot forward slash friend

{% highlight bash %}sudo ./jdownload.sh{% endhighlight %}



and if it fails say because of permissions, you could try this before executing it

{% highlight bash %}chmod +x jdownload.sh{% endhighlight %}


or in properties check option executable file then execute it

{% highlight bash %}sudo ./jdownload.sh{% endhighlight %}

Referencia: https://stackoverflow.com/questions/9477157/how-to-run-binary-file-in-linux




## Instalar una aplicación deb

{% highlight bash %}sudo dpkg -i google-chrome-stable_current_amd64.deb{% endhighlight %}

## instalar varias aplicaciones deb

{% highlight bash %}cd directoriodelosdeb
sudo dpkg -i *.deb{% endhighlight %}


## Instalar dependencias pendientes

{% highlight bash %}apt-get -f install
dpkg -i <package>.deb{% endhighlight %}


## Desinstalar y eliminar Google Chrome

{% highlight bash %}sudo apt-get purge google-chrome-stable
sudo apt-get autoremove{% endhighlight %}

# Servicios (iniciar, detener, reiniciar)

Iniciar
{% highlight bash %}sudo systemctl start php5-fpm.service{% endhighlight %}

Detener
{% highlight bash %}sudo systemctl stop php5-fpm.service{% endhighlight %}

Reiniciar
{% highlight bash %}sudo systemctl restart php5-fpm.service{% endhighlight %}

# Configurar aplicaciones y servicios

**Tee**: Permite modificar configuraciones por comandos.

{% highlight bash %}echo "newline" | sudo tee -a /etc/file.conf{% endhighlight %}

Ejemplo:

{% highlight bash %}echo "fs.inotify.max_user_watches=204800" | sudo tee -a /etc/sysctl.conf{% endhighlight %}

Ref: https://linuxize.com/post/linux-tee-command/

# Gestión de archivos y carpetas

**ls**: Permite listar el contenido de una carpeta 

{% highlight bash %}ls -al{% endhighlight %}

Permite listar el contenido de una carpeta y ver las propiedades o archivos de estas.

{% highlight bash %}ls -al --color=none{% endhighlight %}

Permite listar el contenido de una carpeta y ver las propiedades o archivos de estas sin colores destacados

{% highlight bash %}ls --color=none  /etc{% endhighlight %}

Permite listar el contenido del directorio /etc   sin colores destacados

<!-- TODO: agregar opciones pdw -->
**pdw**: Muestra el directorio actual de trabajo donde se esta trabajando

<!-- TODO: agregar opciones cd -->
**cd**: Cambiar de directorio




Carácteres especiales para navegación de carpetas
{% highlight bash %}- Carpeta de trabajo anterior
.. Carpeta padre
. Carpeta actual
~ Carpeta home
$HOME Carpeta home{% endhighlight %}



mkdir: Permite crear directorios

{% highlight bash %}mkdir -p -v
-p crea los directorios padres si no existen 
-v Muestra por pantalla lo realizado
{} Permite crear estructuras recursivas con determinado patrón{% endhighlight %}

**tree**: Muestra la estructura de un directorio

**cp**: Permite copiar archivos y directorios



# Tareas Programadas en Cron 

Cron es un administrador de procesos que se ejecutan en determinados intervalos de tiempo.


## Respaldo de base de datos 

Crear archivo backup.sh (en cualquier lugar del sistema de archivos) y en dicho archivo colocaremos lo siguiente:

{% highlight bash %}#!/bin/bash

now=`date +"%Y%m%d_%H%M%N"`
dest="/var/backups/${now}.sql"

pg_dump -d my_data_base -U my_user -w -f $dest {% endhighlight %}

El script creará una copia de la base de datos de my_data_base en la carpeta /var/backups/ con la fecha de hoy.

Ahora vamos a automatizarlo, y para eso utilizaremos CRON que ya viene con los sistemas Linux. 


Para configurarlo, debemos abrir el archivo /etc/crontab

{% highlight bash %}nano /etc/crontab {% endhighlight %}

Este archivo tiene la siguiente estructura:

{% highlight bash %} {% include 2019-02-23-Guia-Debian-OS/crontab.conf %}{% endhighlight %}

Para agregar una nueva programación agregaremos una línea con la siguiente estructura:

1. Minuto (0-59)
2. Hora (0-23)
3. Día del mes (1-31)
4. Mes (1-12)
5. Día de la semana (0-6) (Donde 0 es domingo)
6. Usuario con el que quieres ejecutar el comando
7. Comando a ejecutar

Siguiendo la estructura anterior, vamos a registrar nuestro archivo agregando una línea al final del archivo:
{% highlight bash %}0 23     * * *  root  /ruta/de/tu/backup.sh{% endhighlight %}

Lo que dice esta línea es que en el minuto 0 de las 23 horas de cada día (*), de cada mes (*), todos los días de la semana (*) con el usuario root se va a ejecutar el archivo /ruta/de/tu/backup.sh y puesto que este archivo tiene los comandos para ejecutar una copia de la base de datos, ya tenemos backups automáticos todos los días a las 11pm. 


Fuente: https://ed.team/blog/administra-tu-servidor-linux-como-un-pro-con-tareas-automatizadas


# Particiones de disco

Por defecto y usuarios novatos 

Partición: Swap
Partición: /

Recomendada

Partición: Swap de 2GB
Partición: /  de 30GB
Partición: /home  queda con el espacio disponible

Avanzada

Partición: Swap
Partición: /
Partición: /home
Partición: /var
Partición: /tmp

Regla de Swap para la hibernación: Swap el doble de la memoria ram para equipos de escritorio.

# Inotify limits


Listen uses inotify by default on Linux to monitor directories for changes.  
For example, Debian 9.8 (64-bit) inotify limit is set to 65536.

You can get **your current inotify** file watch limit by executing:

{% highlight bash %}cat /proc/sys/fs/inotify/max_user_watches{% endhighlight %}

**Change Inotify**:

{% highlight bash %}echo "fs.inotify.max_user_watches=204800" | sudo tee -a /etc/sysctl.conf{% endhighlight %}



Ref: https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers


Este modifica temporalmente los inotify en el instante sin reiniciar, al reiniciar vuelve la conf. por defecto

To adjust the limit immediately, run:

{% highlight bash %}sudo sh -c 'echo 204800 > /proc/sys/fs/inotify/max_user_watches'{% endhighlight %}


Ref: https://docs.syncthing.net/users/faq.html#inotify-limits


# Montar disco Exfat

Descargar paquetes

{% highlight bash %}sudo apt-get install exfat-fuse exfat-utils{% endhighlight %}


Los entornos gráficos montan automáticamente la partición. 
En caso de que prefiere montar el disco del terminal, ejecute el siguiente comando:

{% highlight bash %}sudo mount -t exfat /dev/sdb1 /punto/a/montar{% endhighlight %}

Asegúrese de cambiar /dev/sdb1 al dispositivo apropiado para su sistema y /punto/a/montar al directorio que se va utilizar para montar el disco. 
En caso de que no sepa cuál es el dispositivo, ejecute el siguiente comando:

{% highlight bash %}sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL{% endhighlight %}


Este comando muestra una lista de todos los discos en el sistema con la siguiente información: Nombre, sistema de archivos, tamaño, punto de montaje, etiqueta. 
La columna de FSType (sistema de archivos) le muestra cuál disco utiliza el sistema de archivos exFAT. Puede utilizar esa información para montar su disco manualmente.

https://www.expertosdecomputadoras.com/montar-disco-exfat-ubuntu/


# Gestión de redes
<!-- TODO: agregar ejemplos redes -->

Pre-requisitos: Activar los repositorios privativos non-free en Debian
iproute2
Iwconfig

https://geekland.eu/instalar-drivers-tarjeta-de-red-wifi-debian/

# Repositorios con PPA

## Agregar un repositorio
{% highlight bash %}sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily
sudo apt-get update{% endhighlight %}

## Eliminar un repositorio 
{% highlight bash %}sudo apt-add-repository --remove https://launchpad.net/~christian-boxdoerfer/+archive/ubuntu/fsearch-daily{% endhighlight %}


Otra forma es utilizando el paquete ppa-purge

Instalación paquete para habilitar opción:
{% highlight bash %}sudo apt-get install ppa-purge{% endhighlight %}

Remover repositorio utilizando ppa-purge:
{% highlight bash %}sudo ppa-purge ppa:ubuntu-mozilla-daily/firefox-aurora{% endhighlight %}


# Páginas de Referencia
* https://distrowatch.com/table.php?distribution=debian