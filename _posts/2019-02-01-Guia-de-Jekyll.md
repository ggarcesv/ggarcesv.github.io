---
layout: post
title: Guía de Jekyll 3.8.5
author: Giuliano Garcés

---
Actualizado 18/02/2019 · Rev 4

### Ejecutar servidor jekyll

{% highlight bash %}

bundle exec jekyll serve

{% endhighlight %}


### Crear un nuevo post 

Agrega un nuevo archivo markdown en la carpeta `_posts` con siguiente convensión de nombre `YYYY-MM-DD-name-of-post.md` automáticamente aparecerá como una entrada de blog. 


### Acceso directo

Revisa la documentación  [Jekyll docs][jekyll-docs] para conocer más acerca de Jekyll. 

[jekyll-docs]: https://jekyllrb.com/docs/home

This is the base Jekyll theme. You can find out more info about customizing your Jekyll theme, as well as basic Jekyll usage documentation at [jekyllrb.com](https://jekyllrb.com/)


### Insertar imágenes

{% raw %}
[<img src="/images/404.jpg" style="width: 50px;"/>]({{ site.baseurl }}/)
[<img src="/images/404.jpg" style="width: 80px;"/>]({{ site.baseurl }}/)
[<img src="/images/404.jpg" style="width: 100px;"/>]({{ site.baseurl }}/)
{% endraw %}

[<img src="/images/404.jpg" style="width: 50px;"/>]({{ site.baseurl }}/)
[<img src="/images/404.jpg" style="width: 80px;"/>]({{ site.baseurl }}/)
[<img src="/images/404.jpg" style="width: 100px;"/>]({{ site.baseurl }}/)

### Insertar archivos de código 

{% raw %}
    {% highlight ruby %}
    {% include 2019-02-01-Guia-de-Jekyll/c1.rb %}
    {% endhighlight %}
{% endraw %}

{% highlight ruby %}
{% include 2019-02-01-Guia-de-Jekyll/c1.rb %}
{% endhighlight %}

### Observaciones

- El nombre de archivo de los post, códigos o imágenes no deben contener palabras reservadas.
- jekyll se puede complementar con gemas
- Github Page solo soporta alguna gemas [pages.github.com/versions](https://pages.github.com/versions/) 
- Si utilizamos gemas de terceros en local, sus etiquetas no podran utilizarse en github page.
- Se recomienda utilizar [GitHub Pages Ruby Gem](https://github.com/github/pages-gem) como configuración de entorno local de Jekyll para sincronizar con GitHub Pages.
