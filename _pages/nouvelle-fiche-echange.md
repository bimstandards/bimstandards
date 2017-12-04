---
layout: default
group: fiches-echanges
title: Nouvelle fiche d'échange
comments: false
permalink: /nouvelle-fiche-echange/
---

## Méthode d'ajout d'une nouvelle fiche (réservé aux éditeurs)

### Etape 1 : Prérequis

[Créer un compte Github (gratuit).](https://github.com/join)

### Etape 2 : Ajouter les métadonnées de la fiche

* Copier le modèle ci-dessous :

```
---
layout: fiche // Ne pas modifier
group: fiches-echanges // Ne pas modifier
comments: true // Ne pas modifier
titre: Fiche point à point - Logiciel A > Logiciel B
source_nom: Logiciel A
source_version: version
source_editeur: Editeur A
destination_nom: Logiciel B
destination_version: version
destination_editeur: Editeur B
usage_metier: usage
nom_pdf: source-destination.pdf
statut: statut // brouillon, relecture, publiée
maj: 07/03/2017 // Date de mise à jour
---
```

* [Créer une nouvelle fiche](https://github.com/alexandregrignon/MC-GT07-IFCINT/new/master/_fiches), coller le texte et compléter les métadonnées.

* Enregistrer le fichier en le nommant de la façon suivante : `source-destination.md`, par exemple `archicad-revit.md`.

### Etape 3 : Ajouter la fiche au format .pdf

Dans le répertoire `_fiches`, [ajouter le fichier pdf](https://github.com/alexandregrignon/MC-GT07-IFCINT/upload/master/_fiches) nommé de la façon suivante : `source-destination.pdf`, par exemple `archicad-revit.pdf`.
