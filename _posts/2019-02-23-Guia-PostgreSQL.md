---
layout: post
title: Guía PostgreSQL
categories: [database]
image: https://todopostgresql.com/wp-content/uploads/2018/10/postgresql11.png
---

{% highlight bash %}apt-get install postgresql postgresql-11 postgresql-client-11 postgresql-client-common postgresql-common sysstat {% endhighlight %}

Activamos el servicio de postgres

{% highlight bash %}systemctl enable postgresql {% endhighlight %}


Inicializamos el servidor de base de datos

{% highlight bash %}systemctl start postgresql{% endhighlight %}

Para acceder:

{% highlight bash %}su - postgres
psql{% endhighlight %}


Fuente: https://www.evaristogz.com/instalacion-postgresql-acceso-remoto-externo/