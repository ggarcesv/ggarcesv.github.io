---
layout: post
title: Guía de Jekyll 3.8.5
author: Giuliano Garcés

---
Actualizado 16/02/2019 · Rev 2

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

[<img src="{{ site.baseurl }}/images/404.jpg" style="width: 50px;"/>]({{ site.baseurl }}/)
[<img src="{{ site.baseurl }}/images/404.jpg" style="width: 80px;"/>]({{ site.baseurl }}/)
[<img src="{{ site.baseurl }}/images/404.jpg" style="width: 100px;"/>]({{ site.baseurl }}/)