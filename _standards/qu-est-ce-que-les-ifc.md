---
layout: default-sidebar
group: standards
lang: français
title: Qu'est-ce que les IFC ?
description: Industry Foundation Classes, le format d'échanges universel
comments: true
icon: refresh
ordre: 1
status: publish
redirect_from:
  - /standards/ifc/
  - /standards/openbim/
  - /travailler-avec-les-ifc/qu-est-ce-que-les-ifc/
---

# Qu'est-ce que les IFC ? (Industry Foundation Classes)

## Contexte

Les IFC sont de la volonté d'améliorer l'interopérabilité des logiciels utilisés dans le secteur de la construction. Elles ont été spécifiées par l'IAI (International Alliance for Interopérability) créée en 1996 et devenue BuildingSmart international depuis 2008. BuildingSMART International qui continue de la maintenir et de l'enrichir, mais aussi à certifier les logiciels sur l'IFC.

## Définition

Les IFC constituent un **modèle conceptuel de données orienté objet**. Les IFC permettent de décrire des objets (murs, fenêtres, espaces, poteaux…) ainsi que leurs relations (comme le percement d'un mur par une ouverture et l'association d'une porte à cette ouverture). A chaque "objet" peut être associé un certain nombre d'informations, elles aussi codifiées afin d'être lues de manière uniforme par l'ensemble des logiciels du marché. Ces "classes d'objets" traitent :
- de la forme des objets ainsi que de leurs caractéristiques (comme la composition d'un mur),
- du bâtiment tout au long du cycle de programmation, (conception, construction, gestion) et selon différents points de vue (architecture, structure, thermique, estimatif...).

La version 4 du modèle IFC comporte 776 classes d'objets ce qui permet une grande précision dans la qualification de la donnée. Les IFC **définissent donc la façon dont l'information va être structurée pour pouvoir être lue et correctement interprétée par les "machines" logiciels**. Ce format d'échanges de données structurées garantit le partage d'informations entre les différents logiciels-métiers dans un projet BIM. L'IFC ou "Industry Foundation Classes" est un modèle de données ouvert et neutre, nécessaire au développement de l'openBIM.

## Explications

Pourquoi une orientation objet ? Dans un simple logiciel de dessin quand des changements surviennent, il faut ouvrir et modifier un à un les fichiers pour restaurer la cohérence de la documentation. Lorsque le bâtiment est défini par modélisation des objets, la production de diverses vues (niveau, axonométrie, coupe, nomenclature des fenêtres…) est facilitée, et si l'on supprime la fenêtre dans une quelconque de ces vues, les autres sont mises à jour automatiquement. Cette orientation "objet" implique d'être très précis sur la façon dont les éléments sont modélisés et renseignés à la source afin qu'ils soient correctement interprétés dans le format IFC.

## Bénéfices implémentation

Indépendance vis-à-vis solutions payantes ; possibilité développement de logiciels métiers compatibles ; accessibilité financière ; pérennisation des données.
A noter : **les IFC ne remplacent pas le format natif du logiciel utilisé pour faire du BIM**.

## Versions IFC

Depuis la version IFC1.0 en 1997, buildingSMART développe et améliore continuellement ce standard majeur. La version IFC4 est une norme ISO (16 739) depuis mars 2013. Elle va progressivement devenir la référence. La prochaine version (IFC5) traitera du domaine des infrastructures. Son développement en cours mobilise de nombreux pays et la direction technique de l'InfraRoom est actuellement assurée par Christophe Castaing.
<table class="table table-responsive table-sm table-hover">
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

L'association buildingSMART a tout naturellement donné au format IFC son logo des 4 anneaux qui symbolisent la collaboration à travers toutes les phases de projet.

![logo IFC]({{ site.url }}/assets/img/logo-ifc.jpeg)

## Sources

* **Versions IFC sur le site buildingSMART**. Disponible sur :  [http://www.buildingsmart-tech.org/specifications/ifc-releases](http://www.buildingsmart-tech.org/specifications/ifc-releases)
* **Histoire de buildingSMART**. Disponible sur : [http://www.buildingsmart.org/about/about-buildingsmart/history/](http://www.buildingsmart.org/about/about-buildingsmart/history/)
