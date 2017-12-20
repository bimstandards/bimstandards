---
layout: default-toc
group: echanger-en-bim
title: Classifications
description: Systèmes de classification des objets (ouvrages)
comments: true
icon: filter
ordre: 2
status: publish
redirect_from:
  - /standards/classifications/
---

# Classifications

<div class="alert alert-warning" role="alert">
  <h4 class="alert-heading"><i class="fa fa-exclamation-circle" aria-hidden="true"></i> Bientôt du nouveau dans cette catégorie</h4>
  <p>Le groupe de travail "Systèmes de classification" de Mediaconstruct prépare actuellement la publication d'un état des lieux détaillé sur les classifications. Dans ce cadre, cette section sera bientôt mise à jour pour devenir plus complète.</p>
</div>

## Introduction

Bien avant l’avènement des IFC, certains acteurs de la construction ont cherché à classifier les ouvrages d’un bâtiment. Initialement développées pour faciliter les estimations de coûts dans les premières phases de projet, ces standards de classification sont désormais utilisés pour différents sujets : nommage des calques dans les fichiers de dessin, analyse du cycle de vie, classification des produits, facilitation de la gestion de patrimoine et exploitation-maintenance.

Ces classifications sont accompagnées d'une codification à différents niveaux hiérarchiques (généralement 3 ou 4 niveaux) permettant de choisir le degré de finesse selon les besoins. Cette manière de classifier est basée sur la norme [ISO 12006-2](http://www.iso.org/iso/catalogue_detail.htm?csnumber=61753).

Pour le BIM, les systèmes de classification sont principalement utilisés en complément de classes d'objets IFC pour préciser la qualification des ouvrages. Par exemple, la classe `IfcWall` désigne les parois de manière générale, mais ne permet pas de distinguer une cloison d'un mur extérieur. On pourra donc, sous le paramètre `IfcClassificationReference`, attribuer un code de la classification UNIFORMAT II 2015 parmi les suivants :

* B2010 - Murs extérieurs
* C1010 - Cloisons.

## Classifications existantes

Les classifications les plus récentes sont toute héritées de l'adaptation d'anciennes classifications au fil des ans, comme le montre le schéma généalogique ci-dessous (en vert les classifications les plus utilisées à l'heure actuelle) :

![capture]({{ site.url }}/assets/img/classifications.png)

Liste des classifications par année de parution et caractéristiques principales :

<table class="table table-responsive table-bordered table-hover table-sm">
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
        <a href="{{ classification.lien }}">{{ classification.nom }}</a>
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

## Classifications les plus utilisées

Ici, nous nous intéresserons principalement à l'**UNIFORMAT II 2015**, classification la plus utilisée pour les ouvrages. Ses équivalents sont :

* OmniClass 2010 - Table 21 Elements
* Uniclass2015 - Table Ee "Elements"

### UNIFORMAT II 2015

Il existe aujourdhui deux classifications Uniformat développées en parallèle : l'**Uniformat 2010** développée par [CSI](https://www.csiresources.org/practice/standards/uniformat), et l'**UNIFORMAT II 2015** développée par [ASTM](https://www.astm.org/Standards/E1557.htm). N'ayant jamais été consolidées, elle comportent aujourd'hui des divergences sur certains ouvrages. Dans le tableau ci-dessous détaillant la classification **UNIFORMAT II 2015**, vous verrez les codes correspondants à la classification **Uniformat 2010** dans la dernière colonne, avec un surlignage lorsqu'ils divergent.

<table class="table table-responsive table-bordered table-hover table-sm">
  <thead>
  <tr>
    <th>Niveau 1</th>
    <th>Niveau 2</th>
    <th>Niveau 3</th>
    <th>Correspondance Uniformat CSI 2010</th>
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
      <td {% if classification.code != classification.mapping_uniformat_csi_2010 %}class="table-warning"{% endif %}>
        {{ classification.mapping_uniformat_csi_2010 }}
      </td>
    </tr>
    {% endfor %}
  </tbody>
</table>

### OmniClass Table 13

La [Table 13](http://www.omniclass.org) de l'Omniclass est complémentaire de l'Uniformat puisqu'elle propose une classification des espaces par type d'usage.

## Sources

* **Intégration de classifications dans Archicad**. Disponible sur :  [http://www.graphisoft.com/downloads/archicad/BIM_Data.html](http://www.graphisoft.com/downloads/archicad/BIM_Data.html)
