---
layout: default
group: ressources
title: Outils
description: Trouver l'outil adapté au besoin
comments: true
ordre:
---

# Outils

L'openBIM développe l'idée de ne pas dépendre d'un seul logiciel ou format de fichier propriétaire, mais de pouvoir choisir librement son outil de travail, **en fonction de ses besoins**. L'ensemble des outils listés ci-dessous exploitent un ou plusieurs standards buildingSMART, garantissant l'intéropérabilité et la continuité dans les échanges d'information.

<table class="table table-responsive table-sm table-hover">
  <thead>
    <tr>
      <th></th>
      <th>Nom</th>
      <th>Editeur</th>
      <th>Standards supportés</th>
    </tr>
  </thead>
  <tbody>
    {% for outil in site.data.outils %}
    <tr>
      <td>
        {% if outil.logo != nil %}
        <img src="../../assets/img/outils/{{ outil.logo }}" class="img-fluid" style="height:25px;" alt="logo {{ outil.name }}">
        {% endif %}
      </td>
      <td><a href="{{ outil.url }}" target="_blank">{{ outil.name }}</a></td>
      <td>{{ outil.editor }}</td>
      <td>
        {% for standard in outil.standards %}
        <span class="badge badge-secondary">{{ standard }}</span>
        {% endfor %}
      </td>
    </tr>
    {% endfor %}
  </tbody>
</table>

Les logiciels **officiellement certifiés IFC** sont listés par [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/). Une liste plus complète des logiciels **compatibles** mais non certifiés en import et/ou export IFC est publiée par l'[Implementation Support Group de buildingSMART](http://www.buildingsmart-tech.org/implementation/implementations/allplominoform.application).
