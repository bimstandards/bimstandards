---
layout: bonnes-pratiques
title: Structure
group: bonnes-pratiques
---

# Structure

La conception structurelle en processus BIM fait intervenir deux types de modélisation :

* **modélisation filaire** (analytique) pour les calculs de stabilité / descentes de charges.
* **modélisation par objets** pour la définition géométrique des sections structurelles.

Dans un processus de conception classique, l'architecte est le premier intervenant à dessiner un principe structurel, qu'il transmettra ensuite à l'ingénieur structure. Il faut donc veiller à respecter au maximum la conception filaire de la structure.

{% include collapse-open.html titre="Archicad : définition des axes structurels" %}
à venir...
{% include collapse-close.html %}

Pour chaque objet du domaine structure, renseigner à minima les attributs suivants :

* `LoadBearing = true` (pour les objets `IfcSlab`, `IfcWall`, `IfcColumn`)
* `IfcMaterial.Name`

{% include collapse-open.html titre="Archicad : Vérifier les attributs" %}
à venir...
{% include collapse-close.html %}
