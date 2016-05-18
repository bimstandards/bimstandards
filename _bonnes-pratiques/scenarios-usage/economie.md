---
layout: bonnes-pratiques
group: bonnes-pratiques
title: Economie (5D)
description: Structuration et quantification des ouvrages, scénarios d'échanges avec l'économiste.
icon: money
category: scenarios-usage
status: publish
---

# Economie (5D)

L'utilisation de la maquette numérique pour l'économie du projet nécessite plusieurs points de vigilance dans l'élaboration et l'export IFC :

* pour la **quantification**, veiller à utiliser les commandes logicielles correspondants aux bonnes [catégories d'objets]({{ site.url }}/bonnes-pratiques/regles-base/principes-generaux#catgories-dobjets) pour conserver la logique géométrique permettant l'extraction de quantités.
* pour le découpage du projet en **ouvrages**, il est conseillé d'utiliser une classification adaptée, soit dans le nom de l'objet, soit dans le champ `IfcClassificationReference`. On pourra par exemple utiliser la classification *Uniformat II* qui répond également aux besoins de gestion de patrimoine, ou une classification propre à l'équipe de maîtrise d'oeuvre.
* pour l'attribution de **propriétés spécifiques** aux ouvrages, on veillera à utiliser les ["Property Sets" adaptés]({{ site.url }}/bonnes-pratiques/regles-base/principes-generaux#proprits-dobjets). On pourra ainsi spécifier un certains nombre d'attributs utiles aux nomenclatures de locaux, parois, finitions, menuiseries, etc...

## Le format BIMétré

## Sources
