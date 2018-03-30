---
layout: default-toc
group: travailler-avec-les-ifc
title: Imports / Exports IFC
description: Règles de base pour garantir la qualité des imports / export IFC.
comments: true
icon: exchange
ordre: 5
status: publish
redirect_from:
  - /bonnes-pratiques/regles-base/imports-exports-ifc/
---

# Imports / Exports IFC

## Introduction

Tout d'abord, il faut garder en tête qu'un export de maquette numérique au format IFC est réalisé en fonction de son destinataire, car le paramétrage d'export peut être radicalement différent entre deux acteurs. C'est ce qu'on appelle un MVD (Model View Definition), c'est-à-dire une certaine vision d'une même modèle.

**La norme IFC2x3 comprend un MVD principal :**

* **Coordination View V2.0** : cette vue a été conçue pour coordonnéer les trois modèles principaux de la conception d'un projet : le modèle architectural, le modèle structurel et le modèle fluides.

**La norme IFC4 prévoit deux MVD principaux :**

* **Reference View 1.0** : cette vue est plutôt destinée à des flux d'échange unidirectionnels, l'émetteur du fichier restant propriétaire du modèle. Elle garantit la cohérence géométrique du modèle et les quantités de base, et en contrepartie, il n'est pas forcément possible de récupérer ou modifier les objets de la maquette.
* **Design Transfer View 1.0** : cette vue conserve au maximum le caractère éditable des objets IFC, elle permet donc d'intervenir à postériori sur le modèle et donne la possibilité d'ajouter, supprimer, modifier ou extraire des éléments. La propriété du modèle peut être transférée.

## Mappage des classes IFC

Parfois, on remarque que certains paramètres présents dans le fichier BIM natif ne sont pas présents dans l'export IFC. Cela est du à la particularité de la plupart des logiciels-métiers de ne pas exporter l'IFC de façon native, mai en réalisant un **mappage des différentes classes et propriétés IFC**.
Si ce mappage est la plupart du temps préconfiguré, il est néanmoins nécessaire de bien comprendre comment vérifier et ajouter des correspondances de classes IFC.

## Paramètres généraux

* activer l'export des **quantités de base** (Base Quantities) (longueurs, surfaces, volumes des éléments)
  * **Allplan** : décocher la case conforme cv2.0
  * **Archicad** : Dans les réglages de traducteur IFC, cocher la case "Quantités de base IFC". Le détail des quantités exportées par type d'élément est expliqué [ici](http://bimblog.bondbryan.com/exporting-quantities-to-ifc-2x3-from-archicad-1819-models/).
  * **Cadworks** : Il n'est pas possible de calculer les quantités de base IFC au moment de l'export. En alternative, il est possible avec le logiciel simplebim de calculer les quantités et de les ajouter au fichier IFC.
  * **Revit** : Dans les réglages d'export IFC, cocher la case "Exporter les quantités de base".
  * **Sketchup** : Il n'est pas possible de calculer les quantités de base IFC au moment de l'export. En alternative, il est possible avec le logiciel simplebim de calculer les quantités et de les ajouter au fichier IFC.
  * **Tekla** : Dans les réglages d'export IFC, cocher la case "Base Quantities". Le détail des quantités exportées par type d'élément est expliqué [ici](https://teklastructures.support.tekla.com/2017/en/int_IFC_base_quantities).
  * **Vectorworks** : Dans les réglages d'export IFC, activer l'export des quantités.

* activer l'export des **limites d'espaces** (utile pour la thermique)

{% include callout-open.html param="danger" %}
**Note :**
Après l'export, il est conseillé d'ouvrir le fichier IFC dans une visionneuse (type Solibri, Tekla BIMsight) afin de vérifier que la géométrie et les données sont correctes.
{% include callout-close.html %}

## Problèmes connus

Les problèmes d'échanges sont dépendants d'une multitude de facteurs. Voir ci-dessous les points à prendre en compte lorsqu'un problème est rencontré.

**Problèmes généraux**

* La modélisation était-elle correcte à la base ?
* L'objet était-il bien présent à l'origine ?
* Cela vient-il des réglages d'export ?
* Cela vient-il des réglages d'import ?
* Le schéma IFC est-il respecté ?
* Le géoréférencement a-t-il été mis en place ?
* Le problème est-il lié au logiciel-métier ?

**Problèmes connus d'ARCHICAD vers Revit**

* Géométrie de site
* Revêtements
* Hauteur de mur correspondant à une hauteur de porte
* Hauteur de pièce
* Symbole d'ouverture de porte
* Connexion d'éléments Revit à des murs récupérés depuis ARCHICAD

**Problèmes connus de Revit vers ARCHICAD**

* Attributs de profils

## Anonymat

En cas de remise d'une maquette IFC à un concours placé sous anonymat, il est impératif de vérifier qu'aucune information nominative ne soit présente dans le contenu du fichier.

Généralement, les informations personnelles peuvent être contenues dans les lignes `FILE_NAME`, `IFCPERSON`, `IFCACTORROLE`, `IFCPOSTALADDRESS`, `IFCTELECOMADDRESS`, `IFCORGANIZATION`, `IFCPERSONANDORGANIZATION`, `IFCOWNERHISTORY`.

**Méthode 1 - Vérifier l'anonymat avec un éditeur de texte :**

Après l'export du fichier IFC, l'ouvrir avec un éditeur de texte basique type "Bloc-notes" sur Windows ou "TextEdit" sur Mac.

Identifier, éventuellement en effectuant une recherche de texte, les lignes pouvant contenir des informations sur l'émetteur du fichier. **Attention** à ne pas supprimer ces lignes (sous peine de corrompre le fichier) mais plutôt à remplacer les informations non désirées par des caractères anonymes.

![anonymat]({{ site.url }}/assets/img/bp_ifc_anonymat.png)

**Méthode 2 - Supprimer les informations nominatives avec simplebim :**

Le logiciel simplebim [payant - PC - [Datacubist](http://www.datacubist.com/)] permet, via l'[add-on "Anonymizer"](http://datacubist.com/support/addon-prototypes.html#tool-anonymizer), de rendre anonyme un fichier IFC en remplaçant les champs d'identification par des caractères aléatoires.

**Méthode 3 - Supprimer les informations nominatives avec eveBIM viewer :**

A compléter.

## Sources

* **Guidance notes for Autodesk Revit users exchanging models with Graphisoft ARCHICAD** [Article en ligne]. BIM Blog, Bond Bryan Digital. Disponible sur : [http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/](http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/)
* **IFC based data exchange – Troubleshooting guide** [Article d'aide en ligne - mis à jour le 13/04/2016]. Help Center, Graphisoft. Disponible sur : [http://helpcenter.graphisoft.com/troubleshooting/import-export/troubleshooting-guide-for-ifc-based-data-exchange-2/](http://helpcenter.graphisoft.com/troubleshooting/import-export/troubleshooting-guide-for-ifc-based-data-exchange-2/)
