---
layout: default-sidebar
group: bonnes-pratiques
title: Structure
description: Logiques de modélisation pour la conception structurelle, scénarios d'échanges entre architecte et ingénieur.
comments: true
icon: institution
category: scenarios-usage
status: draft
---

# Structure

La conception structurelle en processus BIM fait intervenir deux types de modélisation :

* **modélisation filaire** (analytique) pour les calculs de stabilité / descentes de charges.
* **modélisation par objets** pour la définition géométrique des sections structurelles.

Dans un processus de conception classique, l'architecte est le premier intervenant à dessiner un principe structurel, qu'il transmettra ensuite à l'ingénieur structure. Il faut donc veiller à respecter au maximum la conception filaire de la structure.

Pour chaque objet du domaine structure, renseigner à minima les attributs suivants :

* `LoadBearing = true` (pour les objets `IfcSlab`, `IfcWall`, `IfcColumn`)
* `IfcMaterial.Name`

## Sources
