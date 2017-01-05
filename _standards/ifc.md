---
layout: default-toc
group: standards
title: IFC
description: (Industry Foundation Classes)
ordre: 2
---

# IFC (Industry Foundation Classes)

## Introduction

L'IFC ou "Industry Foundation Classes" est un modèle de données ouvert et neutre, nécessaire au développement de l'openBIM. Il garantit le partage et l'échanges de données BIM entre les différents logiciels-métiers. Les "classes d'objets" permettent de décrire et qualifier l'ensemble des éléments du bâti (murs, dalles, cloisons, portes, fenêtres, espaces, équipements, ...) ainsi que leurs relations (entre un mur et une fenêtre, ou entre un équipement et un local).

A chaque "objet" peut être associé un certain nombre d'informations, elles aussi codifiées afin d'être lues de manière uniforme par l'ensemble des logiciels du marché.

Cette spécification, certifiée ISO 16739, est développée et mise à jour par [buildingSMART International](http://www.buildingsmart.org/), dont le chapitre français est [Mediaconstruct](http://www.mediaconstruct.fr/).

L'association buildingSMART a tout naturellement donné son logo au format IFC. Celui-ci symbolise la collaboration à travers toutes les phases de projet.

![logo IFC](http://www.buildingsmart.org/wp-content/uploads/2014/11/Full-Logo1.jpg "logo IFC")

Ci-dessous, le documentaire "The End of Babel" réalisé en 1994 pour faire la promotion de l'IFC.

<div class="row">
  <div class="col-md-6">
    <div class="embed-responsive embed-responsive-4by3">
      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/g_jmGQvr6dQ"></iframe>
    </div>
  </div>
  <div class="col-md-6">
    <div class="embed-responsive embed-responsive-4by3">
      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/vTyB96O7Xeg"></iframe>
    </div>
  </div>
</div>

## Versions IFC

Depuis la version IFC1.0 en 1997, buildingSMART développe et améliore continuellement ce standard majeur. L'IFC4-Add1, dernière version officielle, n'est pas encore pleinement prise en charge par les différents logiciels-métiers ; c'est donc l'IFC2x3-TC1 qui demeure le standard de fait actuellement. On peut espérer que les échanges IFC4 deviendront pleinement opérationnels durant l'année 2016.

<div class="table-responsive">
  <table class="table table-sm table-hover">
    <thead>
      <tr>
        <th>Version</th>
        <th>Date de publication</th>
        <th>Documentation</th>
      </tr>
    </thead>
    <tbody>
      {% for version in site.data.ifc-versions %}
      <tr {% if version.actuelle == "oui" %}class="table-success"{% endif %}>
        <td><b>{{ version.version }}</b></td>
        <td>{{ version.date }}</td>
        <td>
          {% if version.url_doc != nil %}
          <a href="{{ version.url_doc }}" target="_blank">Documentation</a>
          {% endif %}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

## Sources

* [Versions IFC sur le site buildingSMART](http://www.buildingsmart-tech.org/specifications/ifc-releases)
* [Histoire de buildingSMART](http://www.buildingsmart.org/about/about-buildingsmart/history/)
