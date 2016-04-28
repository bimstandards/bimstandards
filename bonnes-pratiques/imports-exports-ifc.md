---
layout: bonnes-pratiques
title: Imports / Exports IFC
group: bonnes-pratiques
---

# Imports / Exports IFC

Paramètres d'export IFC à vérifier :

* activer l'export des **quantités de base** (Base Quantities) (longueurs, surfaces, volumes des éléments)
* activer l'export des **limites d'espaces** (utile pour la thermique)

{% include collapse-open.html titre="Archicad : activer l'export des quantités de base" %}
Dans le menu Fichier > Fichier Spécial > IFC 2x3 > Configuration de traduction IFC > Options exportation > Données modèle dérivé à exporter > Options Données... cocher la case "Quantités de base IFC".

![capture](/assets/img/bp_archicad_base_quantities.png)
{% include collapse-close.html %}

En fonction du cas d'usage correspondant à l'échange de fichier IFC, il est conseillé d'utiliser un MVD.

{% include callout-open.html param="danger" %}
**Note :**
Après l'export, il est conseillé d'ouvrir le fichier IFC dans une visionneuse (Solibri, Tekla BIMsight) afin de vérifier que la géométrie et les données sont correctes.
{% include callout-close.html %}

## Anonymat

En cas de remise d'une maquette IFC à un concours placé sous anonymat, il est impératif de vérifier qu'aucune information nominative ne soit présente dans le contenu du fichier.

Généralement, les informations personnelles peuvent être contenues aux lignes `FILE_NAME`, `IFCPERSON`, `IFCACTORROLE`, `IFCPOSTALADDRESS`, `IFCTELECOMADDRESS`, `IFCORGANIZATION`, `IFCPERSONANDORGANIZATION`, `IFCOWNERHISTORY`.

{% include collapse-open.html titre="Vérifier l'anonymat avec un éditeur de texte" %}
Après l'export du fichier IFC, l'ouvrir avec un éditeur de texte basique type "Bloc-notes" sur Windows ou "TextEdit" sur Mac.

Identifier, éventuellement en effectuant une recherche de texte, les lignes pouvant contenir des informations sur l'émetteur du fichier. **Attention** à ne pas supprimer ces lignes (sous peine de corrompre le fichier) mais plutôt à remplacer les informations non désirées par des caractères anonymes.

![anonymat](/assets/img/bp_ifc_anonymat.png)
{% include collapse-close.html %}

