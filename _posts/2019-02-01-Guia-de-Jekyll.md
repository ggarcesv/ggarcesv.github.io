---
layout: post
title: Guía de Jekyll 3.8.5
image: https://jekyllrb.com/img/octojekyll.png
---
Actualizado 18 Feb 2019 · Rev 4

# Contenido

- [1. Ejecutar servidor jekyll](#1-ejecutar-servidor-jekyll)
- [2. Crear un nuevo post](#2-crear-un-nuevo-post)
- [3. Acceso directo](#3-acceso-directo)
- [4. Insertar imágenes](#4-insertar-imágenes)
- [5. Insertar archivos de código](#5-insertar-archivos-de-código)
- [6. Observaciones](#6-observaciones)


# 1. Ejecutar servidor jekyll

{% highlight bash %}

bundle exec jekyll serve

{% endhighlight %}


# 2. Crear un nuevo post 

Agrega un nuevo archivo markdown en la carpeta `_posts` con siguiente convensión de nombre `YYYY-MM-DD-name-of-post.md` automáticamente aparecerá como una entrada de blog. 


# 3. Acceso directo

Revisa la documentación  [Jekyll docs][jekyll-docs] para conocer más acerca de Jekyll. 

[jekyll-docs]: https://jekyllrb.com/docs/home

This is the base Jekyll theme. You can find out more info about customizing your Jekyll theme, as well as basic Jekyll usage documentation at [jekyllrb.com](https://jekyllrb.com/)


# 4. Insertar imágenes

{% raw %}
    <img src="/images/404.jpg" style="width: 50px;"/>
    <img src="/images/404.jpg" style="width: 80px;"/>
    <img src="/images/404.jpg" style="width: 100px;"/>
{% endraw %}

<img src="/images/404.jpg" style="width: 50px;"/>
<img src="/images/404.jpg" style="width: 80px;"/>
<img src="/images/404.jpg" style="width: 100px;"/>

# 5. Insertar archivos de código 

{% raw %}
    {% highlight ruby %}
    {% include 2019-02-01-Guia-de-Jekyll/c1.rb %}
    {% endhighlight %}
{% endraw %}

{% highlight ruby %}
{% include 2019-02-01-Guia-de-Jekyll/c1.rb %}
{% endhighlight %}

# 6. Observaciones

- El nombre de archivo de los post, códigos o imágenes no deben contener palabras reservadas.
- jekyll se puede complementar con gemas
- Github Page solo soporta alguna gemas [pages.github.com/versions](https://pages.github.com/versions/) 
- Si utilizamos gemas de terceros en local, sus etiquetas no podran utilizarse en github page.
- Se recomienda utilizar [GitHub Pages Ruby Gem](https://github.com/github/pages-gem) como configuración de entorno local de Jekyll para sincronizar con GitHub Pages.
