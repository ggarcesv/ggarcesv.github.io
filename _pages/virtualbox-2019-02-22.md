---
permalink: /virtualbox/
title: Guía Virtualbox
categories: [SERVERS]
---
<!-- TOC -->

- [Instalar las guest additions en Debian](#instalar-las-guest-additions-en-debian)
    - [Preparar el sistema operativo](#preparar-el-sistema-operativo)
- [Redes](#redes)
    - [Bridge networking](#bridge-networking)
    - [Network address translation (NAT)](#network-address-translation-nat)
    - [Host-only networking](#host-only-networking)
- [Instantáneas](#instantáneas)
- [I/O Controller Types](#io-controller-types)
    - [LSI Logic](#lsi-logic)
    - [LSI Logic SAS](#lsi-logic-sas)
- [Virtual Disk Type](#virtual-disk-type)
    - [IDE](#ide)
    - [SCSI](#scsi)
    - [SATA](#sata)
    - [NVMe](#nvme)

<!-- /TOC -->
# Instalar las guest additions en Debian


Funcionalidades adicionales que aportan las guest additions

1 - Mejor soporte de vídeo: 

Al instalar las Guest Additions dispondremos de la capacidad de disponer de aceleración gráfica 2D y 3D en nuestra máquina virtual. Además podremos visualizar el sistema operativo virtualizado en la resolución máxima de nuestro monitor y en pantalla completa.

2- Modos adicionales de visualización: 

En el momento de instalar la guest additions, dispondremos de modos adicionales de visualización como por ejemplo el modo fluido, también conocido como modo seamless, el redimensionado automático en función del tamaño de la ventana de la máquina virtual, etc.

3- Usar carpetas compartidas: 

Al instalar las Guest Additions podremos disponer de una carpeta que sea visible tanto en el sistema operativo real como en el virtualizado. De esta forma será sumamente fácil compartir información entre el sistema operativo real y el virtualizado.

4- Portapapeles compartido: 

Al instalar las Guest Additions podremos usar la función copiar y pegar entre el sistema operativo real y el sistema operativo virtualizado.

5- Integración del cursor del ratón: 

Al instalar las Guest Additions, no será necesario presionar la tecla host para poder usar el ratón en la máquina virtual. Por lo tanto podremos mover el ratón libremente entre el sistema operativo real y el sistema operativo virtualizado.

6- Sincronización horaria: 

Al instalar las Guest Additions, aseguramos que la sincronización del tiempo entre el sistema operativo real y el virtualizado es perfecta. Este hecho es importante en el caso que se utilicen por ejemplo tareas programadas.

7- Acceso a parámetros de configuración adicionales: 

Al instalar La Guest Additions podremos usar herramientas como VBoxControl y VBoxManage. Este aspecto puede ser útil para controlar, modificar y monitorizar ciertos parámetros de la máquina virtual desde el sistema operativo real.

8- Compartición de memoria: 

En el caso de usar muchos sistemas virtualizados al mismo tiempo podremos hacer uso de la función compartición de memoria. La función de compartición de memoria identificará trozos de memoria RAM idénticos entre las distintas máquinas virtuales y los solapará. Además la compartición de memoria permitirá reservar áreas de memoria de una máquina virutal y cederlos al resto de máquinas virtual [memory balloning](https://www.virtualbox.org/manual/ch04.html#guestadd-balloon)

9- Inicio de sesión automático: 

Al instalar las Guest Additions, será posible configurar el login automático de sesiones en la máquina virtual a partir de las credenciales proporcionadas por nuestro sistema operativo real.

## Preparar el sistema operativo


El primer paso a realizar es actualizar los repositorios del sistema:
{% highlight bash %}apt-get update{% endhighlight %}
    

Una vez actualizados los repositorios tenemos que actualizar el sistema:
{% highlight bash %}apt-get upgrade{% endhighlight %}
    

Una vez actualizado el sistema tenemos que instalar el paquete build-essential.
{% highlight bash %}apt-get install build-essential{% endhighlight %}


>El paquete build-essential es una meta-paquete que contiene la totalidad de software necesario para la generación de paquetes .deb y para la programación en diversos lenguajes como por ejemplo C/C++. Es imprescindible tener instalado este meta-paquete para poder instalar las Guest Additions.
 
Ahora tendremos que asegurar que tengamos instaladas las cabeceras del núcleo.

{% highlight bash %}apt-get install linux-headers-$(uname -r) dkms{% endhighlight %}

    
>Tenemos que asegurar que las cabeceras del núcleo estén instaladas. La función de las cabeceras del núcleo es la de compilar módulos para el kernel.
 
Después de instalar las cabeceras del núcleo tenemos que reiniciar nuestro sistema.
 

Una vez reiniciada la máquina virtual tenemos que instalar el paquete module-assistant

{% highlight bash %}apt-get install module-assistant{% endhighlight %}


>El paquete module-assistant se encarga de compilar e instalar los módulos necesarios para usar un hardware no soportado por el kernel. Por lo tanto necesitamos disponer de este paquete para instalar las Guest Additions.
 
Después de instalar module-assistant deberemos asegurar que el servidor de las X está instalado en nuestra máquina virtual.

{% highlight bash %}sudo apt-get install xserver-xorg xserver-xorg-core{% endhighlight %}

>Este paso se podría omitir ya que lo más seguro es que tengamos instalado el servidor gráfico. El único caso en que en principio sería necesario realizar este paso es cuando instaláramos un servidor que no dispusiera de entorno gráfico.
 
 Finalmente, tan solo falta asegurar que tengamos la versión de las cabeceras del núcleo necesarias y el paquete build essential. 

{% highlight bash %}sudo m-a prepare{% endhighlight %}

>En teoría este paso no es necesario ya que en pasos anteriores hemos instalado las cabeceras del núcleo y el paquete build-essential. No obstante no perdemos nada en hacer la comprobación.


Montar el CD virtual de las Guest Additions en el sistema operativo virtualizado.
Justo después de presionar sobre Insertar Imagen de CD de las Guest Additions, se abrirá nuestro gestor de archivos con el contenido del CD de las Guest Additions:

<img src="/2019-02-23-Guia-Virtualbox/0001.png">


Copiar los archivos del cd en una carpeta al escritorio

Abre la terminal en la carpeta creada   

Otorga permisos de ejecución

{% highlight bash %}chmod +x VBoxLinuxAdditions.run{% endhighlight %}


Ejecutar el siguiente comando en la terminal:    

{% highlight bash %}./VBoxLinuxAdditions.run{% endhighlight %}

    
Luego debes Reiniciar

Fuente: 

* geekland.eu/instalar-las-guest-additions-debian-derivadas
* ochobitshacenunbyte.com/2014/12/10/que-es-y-como-se-instala-build-essentials/


# Redes

## Bridge networking

Posee su propia IP en la red local y es como si tuvieras otro equipo físico en la red.

¿Cuándo utilizar? Si la red es de confianza y no hay restricciones de puertos, control de mac adress o IP entonces se puede utilizar bridge

## Network address translation (NAT)

Sale a internet emulando un DHCP y utilizando la misma IP del equipo host
Nuestro ordenador principal hace de router entre internet y las maquinas virtuales

¿Cuándo utilizar? Nat se encuentra en una red privada dentro de un firewall nat, si estamos en una red no confiable o no se puede tener más de una mac address o IP entonces se puede utilizar NAT

## Host-only networking


# Instantáneas
1. Una versión recién creada por defecto
2. Una versión testing recién creada
3. Una versión por cada nueva configuración

# I/O Controller Types

## LSI Logic

## LSI Logic SAS


# Virtual Disk Type

## IDE
## SCSI
## SATA
## NVMe
