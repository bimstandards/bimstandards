---
layout: default
group: standards
title: Classifications
description: Systèmes de classification des objets (ouvrages)
ordre: 5
---

# Classifications

## Introduction

Bien avant l’avènement des IFC, certains acteurs de la construction ont cherché à classifier les ouvrages d’un bâtiment. Initialement développées pour faciliter les estimations de coûts dans les premières phases de projet, ces standards de classification sont désormais utilisés pour différents sujets : nommage des calques dans les fichiers de dessin, analyse du cycle de vie, classification des produits, facilitation de la gestion de patrimoine et exploitation-maintenance.

Ces classifications sont accompagnées d'une codification à différents niveaux hiérarchiques (généralement 3 ou 4 niveaux) permettant de choisir le degré de finesse selon les besoins. Cette manière de classifiée est basée sur la norme [ISO 12006-2](http://www.iso.org/iso/catalogue_detail.htm?csnumber=61753).

Ainsi, les les systèmes de classification sont utilisés en complément de classes d'objets IFC pour préciser la qualification des ouvrages. Par exemple, la classe `IfcWall` désigne les parois de manière générale, mais ne permet pas de distinguer une cloison d'un mur extérieur. On pourra donc, sous le paramètre `IfcClassificationReference`, attribuer un code de la classification UNIFORMAT II 2015 parmi les suivants :

* B2010 - Murs extérieurs
* C1010 - Cloisons.

Les classifications les plus récentes sont toute héritées de l'adaptation d'anciennes classifications au fil des ans, comme le montre le schéma généalogique ci-dessous (en vert les classifications les plus utilisées à l'heure actuelle) :

![capture]({{ site.url }}/assets/img/classifications.png)

Classifications par année de parution et caractéristiques principales :

<div class="table-responsive">
  <table class="table table-bordered table-hover table-sm">
    <thead>
    <tr>
      <th>Année</th>
      <th>Nom</th>
      <th>Pays</th>
      <th>Organisme</th>
      <th>Commentaire</th>
    </tr>
    </thead>
    <tbody>
      {% for classification in site.data.classifications %}
      <tr class="{% if classification.reconnue == true %}table-success{% endif %}">
        <td>
          {{ classification.annee }}
        </td>
        <td>
          {{ classification.nom }}
        </td>
        <td>
          {{ classification.pays_code }} - {{ classification.pays_nom }}
        </td>
        <td>
          {{ classification.organisme }}
        </td>
        <td>
          {{ classification.commentaire }}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

## Classification des ouvrages

La classification la plus utilisée pour les ouvrages est l'**UNIFORMAT II 2015**. Ses équivalents sont :

* OmniClass 2010 - Table 21 Elements
* Uniclass2015 - Table Ee "Elements"

### UNIFORMAT II 2015

La liste ci-dessous est une traduction de la norme depuis l'anglais :

<div class="table-responsive">
  <table class="table table-bordered table-hover table-sm">
    <thead>
    <tr>
      <th>Niveau 1</th>
      <th>Niveau 2</th>
      <th>Niveau 3</th>
    </tr>
    </thead>
    <tbody>
      {% for classification in site.data.uniformat-ii-2015 %}
      <tr>
        <td>
          {% if classification.level == 1 %}
          <b>{{ classification.code }}</b> - {{ classification.title_FR }}
          {% endif %}
        </td>
        <td>
          {% if classification.level == 2 %}
          <b>{{ classification.code }}</b> - {{ classification.title_FR }}
          {% endif %}
        </td>
        <td>
          {% if classification.level == 3 %}
          <b>{{ classification.code }}</b> - {{ classification.title_FR }}
          {% endif %}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

## Classification des espaces (locaux)

### Omniclass Table 13

A venir.
