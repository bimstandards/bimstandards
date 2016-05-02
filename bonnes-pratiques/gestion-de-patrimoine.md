---
layout: bonnes-pratiques
title: Gestion de patrimoine (6D)
group: bonnes-pratiques
---

# Gestion de patrimoine (6D)

La gestion de patrimoine nécessite une classification complémentaire à l'IFC pour la mise en cohérence des données graphiques et non-graphiques. Parmi ces classifications, on peut citer :

* Uniformat (US)
* Omniclass
* Uniclass (UK)

Le code spécifique à la classification choisie est inséré dans l'attribut `IfcClassificationReference`.

La première entité IFC utile à la gestion de patrimoine est le local (`IfcSpace`). En effet, cet objet peut contenir un certain nombre de propriétés utiles :

* identification des espaces
* calculs de surfaces
* finitions de sols, murs, plafonds
* risques incendie
* etc ...

Voir les Property Sets de la classe `IfcSpace`.

Les autres objets les plus utiles sont ceux qui nécessitent un suivi et une maintenance spécifique, c'est-à-dire les équipements et terminaux.


## format COBie

Modèle de test : http://www.prairieskyconsulting.com/testing.htm