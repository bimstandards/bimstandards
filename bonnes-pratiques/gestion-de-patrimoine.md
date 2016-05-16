---
layout: bonnes-pratiques
title: Gestion de patrimoine (6D)
group: bonnes-pratiques
---

# Gestion de patrimoine (6D)

La gestion de données liée à l'exploitation-maintenance est basée sur 4 standards principaux :

* **IFC2x3 / IFC4** pour la [géométrie](#gomtrie-et-niveaux-de-dtail)
* **LOD 2015** pour la gestion des [niveaux de détail](#gomtrie-et-niveaux-de-dtail)
* **Uniformat II 2015 / Omniclass Table 13** pour les [classifications](#classifications)
* **COBie (BS 1192-4)** pour la structuration du [DOE-BIM](#doe-bim).

## Géométrie et niveaux de détail



## Classifications

La gestion de patrimoine nécessite généralement une classification complémentaire à l'IFC pour la mise en cohérence des données graphiques et non-graphiques dans le système de Gestion Technique Patrimoniale. Idéalement, on utilisera les classifications suivantes (conformes à la norme ISO 12006:2) :

* **Uniformat II 2015** pour la qualification des éléments du bâti
* **Omniclass Table 13** pour la qualification des fonctions d'espaces.

Téléchargements :

* http://www.astm.org/Standards/E1557.htm
* http://www.omniclass.org/tables.asp

Dans le fichier IFC, le code spécifique à la classification choisie est inséré dans l'attribut `IfcClassificationReference`.

{% include collapse-open.html titre="Archicad : renseigner le champ classification d'un objet" %}
A venir...
{% include collapse-close.html %}

### Eléments

La gestion de patrimoine s'intéresse particulièrement aux éléments qui nécessitent un suivi et une maintenance spécifique, c'est-à-dire les équipements et terminaux.

La classification **Uniformat II 2015** permet de hiérarchiser chaque objet de la maquette numérique dans un grand ensemble fonctionnel.

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
      {% for classification in site.data.uniformat-ii %}
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

### Espaces

La première entité IFC utile à la gestion de patrimoine est le local (`IfcSpace`). En effet, cet objet peut contenir un certain nombre de propriétés utiles :

* identification des espaces
* calculs de surfaces
* finitions de sols, murs, plafonds
* risques incendie
* etc ...

Voir les Property Sets de la classe `IfcSpace`.


## DOE-BIM

**format COBie**

* Historique rapide
* Norme BS 1192-4
* Modèle de test : http://www.prairieskyconsulting.com/testing.htm

## Sources
* https://issuu.com/astusconstruction/docs/ppt_alliance_en_ra_-_18_novembre_20
* http://practicalbim.blogspot.fr/2015/06/classification-not-so-easy.html
* http://www.graphisoft.com/ftp/techsupport/documentation/IFC/IFC%20Reference%20Guide%20for%20ARCHICAD%2019.pdf
