---
layout: post
title: Guía Visual Studio Code 1.31
categories: [Guia]
image: https://cdn-images-1.medium.com/max/1200/1*1lVAbOjFoBHUjAkxnOtA2w.png
---
Actualizado 18 Feb 2019 · Rev 2

<!-- TOC -->

- [1. Vista de archivos en orden alfabético mezclando carpetas y archivos.](#1-vista-de-archivos-en-orden-alfabético-mezclando-carpetas-y-archivos)
- [2. Extensión: Markdown TOC de AlanWalk](#2-extensión-markdown-toc-de-alanwalk)

<!-- /TOC -->

# 1. Vista de archivos en orden alfabético mezclando carpetas y archivos.


- File → Preferences → Settings 
- Busca la opción: explorer.sortOrder
- Define: "mixed"
<center>
    <img src="/images/2019-02-16-Guia-de-Visual-Studio-Code/explorer.sortorder.png" style="width: 500px;"/>
</center>


# 2. Extensión: Markdown TOC de AlanWalk

En las ultimas versiones genera un error al generar TOC esto hace referencia a la nueva configuración de los saltos de linea
Para solucionar esto se debe configurar el vscode en:

- File → Preferences → Settings 
- Busca la opción: eol
- Especifica el carácter de termino: \n
