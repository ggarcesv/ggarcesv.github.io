---
layout: post
title: Guía de Jekyll 3.8.5
author: Giuliano Garcés

---
Actualizado 17/02/2019 · Rev 3

### Ejecutar servidor jekyll

{% highlight bash %}

bundle exec jekyll serve

{% endhighlight %}


### Crear un nuevo post 

Agrega un nuevo archivo markdown en la carpeta `_posts` con siguiente convensión de nombre `YYYY-MM-DD-name-of-post.md` automaticamente aparecerá como una entrada de blog. 


### Acceso directo

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. 

[jekyll-docs]: https://jekyllrb.com/docs/home

This is the base Jekyll theme. You can find out more info about customizing your Jekyll theme, as well as basic Jekyll usage documentation at [jekyllrb.com](https://jekyllrb.com/)


### Insertar imagenes

[<img src="/images/404.jpg" style="width: 50px;"/>]({{ site.baseurl }}/)
[<img src="/images/404.jpg" style="width: 80px;"/>]({{ site.baseurl }}/)
[<img src="/images/404.jpg" style="width: 100px;"/>]({{ site.baseurl }}/)

### Insertar archivos de codigo 

{% highlight ruby %}
{% include 2019-02-01-Guia-de-Jekyll/c1.rb %}
{% endhighlight %}

### Observaciones

- El nombre de archivo de los post, códigos o imágenes no deben contener palabras reservadas.
- jekyll se puede complementar con gemas
- Github Page solo soporta alguna gemas [pages.github.com/versions](https://pages.github.com/versions/) 
- Si utilizamos gemas de terceros en local, sus etiquetas no podran utilizarse en github page.
- Se recomienda utilizar [GitHub Pages Ruby Gem](https://github.com/github/pages-gem) como configuración de entorno local de Jekyll para sincronizar con GitHub Pages.
