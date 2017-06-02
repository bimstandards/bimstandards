---
layout: default
title: Méthodes
comments: false
permalink: /methodes/
---

# Méthodes

## Allplan

layout à créer

## Archicad

<ul>
{% for page in site.archicad %}
  <li>
    <a href="{{ page.url }}">{{ page.title }}</a>
  </li>
{% endfor %}
</ul>

## Revit

<ul>
{% for page in site.revit %}
  <li>
    <a href="{{ page.url }}">{{ page.title }}</a>
  </li>
{% endfor %}
</ul>
