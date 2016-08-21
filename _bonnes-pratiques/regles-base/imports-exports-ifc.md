---
layout: default-toc
group: bonnes-pratiques
title: Imports / Exports IFC
description: Règles de base pour garantir la qualité des imports / export IFC.
icon: exchange
category: regles-base
ordre: 3
status: publish
---

# Imports / Exports IFC

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

{% include fiche-archicad.html titre="Archicad : activer l'export IFC des quantités de base" lien="export-ifc-quantites-base" %}

* activer l'export des **limites d'espaces** (utile pour la thermique)

{% include callout-open.html param="danger" %}
**Note :**
Après l'export, il est conseillé d'ouvrir le fichier IFC dans une visionneuse (Solibri, Tekla BIMsight) afin de vérifier que la géométrie et les données sont correctes.
{% include callout-close.html %}

## Anonymat

En cas de remise d'une maquette IFC à un concours placé sous anonymat, il est impératif de vérifier qu'aucune information nominative ne soit présente dans le contenu du fichier.

Généralement, les informations personnelles peuvent être contenues aux lignes `FILE_NAME`, `IFCPERSON`, `IFCACTORROLE`, `IFCPOSTALADDRESS`, `IFCTELECOMADDRESS`, `IFCORGANIZATION`, `IFCPERSONANDORGANIZATION`, `IFCOWNERHISTORY`.

**Vérifier l'anonymat avec un éditeur de texte :**

Après l'export du fichier IFC, l'ouvrir avec un éditeur de texte basique type "Bloc-notes" sur Windows ou "TextEdit" sur Mac.

Identifier, éventuellement en effectuant une recherche de texte, les lignes pouvant contenir des informations sur l'émetteur du fichier. **Attention** à ne pas supprimer ces lignes (sous peine de corrompre le fichier) mais plutôt à remplacer les informations non désirées par des caractères anonymes.

![anonymat](/assets/img/bp_ifc_anonymat.png)

## Sources
