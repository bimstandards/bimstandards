---
layout: methode-revit
group: bonnes-pratiques
title: Exporter un fichier IFC
comments: true
---

## Prérequis

1. Avoir installé le dernier [Service Pack](https://knowledge.autodesk.com/support/revit-products/downloads) pour Revit
2.	Avoir installé le module "[IFC for Revit](https://sourceforge.net/projects/ifcexporter/files/)" (disponible pour les versions 2012 à 2018 de Revit)
3.	Avoir installé le module "[ARCHICAD Connection for Revit](http://www.graphisoft.com/downloads/interoperability.html)". Les versions précédentes sont disponibles en [archive](http://www.graphisoft.com/downloads/addons/interoperability/Archive.html).

*N.B. : Il est recommandé d'utiliser systématiquement l'Add-In "ARCHICAD Connection for Revit" pour toutes les opérations d'import/export avec ARCHICAD.*

![capture]({{ site.url }}/assets/img/bp_revit_acfr_ruban.png)

## Vérifications avant export

* **Important** - Valider au préalable les étapes de la page "Autocontrôle" (à venir).
* Vérifier que le **mapping** des éléments dans le [fichier de correspondances](https://knowledge.autodesk.com/fr/support/revit-products/learn-explore/caas/CloudHelp/cloudhelp/2018/FRA/Revit-DocumentPresent/files/GUID-B85CE60D-2868-427E-A37C-37C4F09D6016-htm.html) est correct pour assurer la fiabilité de l'échange. Pour une aide sur les différentes classes d'objets IFC disponibles, rendez-vous sur [cette page]({{ site.url }}/travailler-avec-les-ifc/objets-ifc/).
* L'export doit comporter **uniquement les niveaux architecturaux**. Par exemple, les niveaux additionnels créés pour des besoins structurels doivent être désactivés en décochant la case "Etage de bâtiment" dans les coupes et élévations. (réglage disponible pour Revit 2013 et ultérieur).
* Si un **système de classification** a été choisi pour le projet, utiliser [cette méthode](http://www.evolve-consultancy.com/resource/guides/ifc-classification-revit).

## Méthode

### Export IFC vers ARCHICAD

Utiliser le bouton "Export to ARCHICAD" dans l'onglet "Compléments" du ruban.

![capture]({{ site.url }}/assets/img/bp_revit_acfr_export_to_archicad.png)

## Options d'export IFC

**Géolocalisation** : 
A compléter.

**Exporter un extrait de maquette** :
A compléter.

**Exporter les propriétés IFC** :
A compléter.

## Options d'export pour les modèles Structure (Revit Structure)

A compléter.

## Options d'export pour les modèles Fluides (Revit MEP)

A compléter.

## Vérifications après export

Il est recommandé d'effectuer un contrôle systématique des fichiers IFC à réception ou avant envoi à un tiers. Cela permet de prévenir toute erreur avant import dans le logiciel-métier. Voici quelques exemples de visionneuses IFC :

* **[Solibri Model Viewer](http://www.solibri.com/products/solibri-model-viewer/)** [Gratuit - PC ou Mac - Solibri]
* **[Tekla BIMsight](http://www.teklabimsight.com/)** [Gratuit - PC - Trimble Solutions]
* **[BIM Vision](http://bimvision.eu/en/free-ifc-model-viewer/)** [Gratuit - PC - Datacomp]
* **[BIMcollab ZOOM](http://www.bimcollab.com/en/ZOOM/zoom)** [Gratuit - PC ou Mac - KUBUS]

*N.B. : La liste ci-dessus n'est pas exhaustive. N'hésitez à proposer d'autres logiciels en cliquant sur "Améliorer cette page" en bas de page*.

## Sources

* **[IFC ARCHICAD & REVIT - Bonnes pratiques](https://archicad.fr/download/guide-ifc-abvent/?wpdmdl=14005)** [PDF en ligne - mis à jour en mai 2017]. Abvent, 2017.
* **[Les bonnes pratiques BIM IFC dans Revit](http://abcdblog.typepad.com/abcd/2016/05/Livre_blanc_Autodesk-Bonnes_Pratiques_BIM-Revit-IFC.pdf)** [PDF en ligne]. Autodesk, 2016.
* **[Guidance notes for Autodesk Revit users exchanging models with Graphisoft ARCHICAD](http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/)** [Article en ligne]. BIM Blog, Bond Bryan Digital.
* **[Protocol IFC export met Revit](http://openbimmers.nl/protocol-ifc-export-met-revit/)** [Article en ligne]. Open Bimmers.
* **[A tool to build Revit's IFC mapping tables - feedback and revision](http://ikleerbim.blogspot.fr/2017/02/a-tool-to-build-revits-ifc-mapping.html?m=1)** [Article en ligne]. Ik Leer BIM.
