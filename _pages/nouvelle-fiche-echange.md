---
layout: default
group: fiches-echanges
title: Nouvelle fiche d'échange
comments: false
permalink: /echanger-en-bim/fiches-echanges/nouvelle/
---

## Ajouter une nouvelle fiche (réservé aux éditeurs)

### Etape 1 : Prérequis

[Créer un compte Github (gratuit).](https://github.com/join)

### Etape 2 : Ajouter les métadonnées de la fiche

* Copier le modèle ci-dessous :

```
---  // RETIRER COMMENTAIRES DERRIERE CARACTERES « // » Y COMPRIS CE COMMENTAIRE
layout: fiche // NE PAS MODIFIER
group: fiches-echanges // NE PAS MODIFIER
comments: true // NE PAS MODIFIER
titre: Fiche d’échanges - Logiciel A > Logiciel B // REMPLACER « Logiciel A » et « Logiciel B »
source_nom: Logiciel A // REMPLACER
source_version: version // REMPLACER
source_editeur: Editeur A // REMPLACER
destination_nom: Logiciel B // REMPLACER
destination_version: version // REMPLACER
destination_editeur: Editeur B // REMPLACER
usage_metier: usage // INDIQUER DISCIPLINES DE DESTINATION DU LOGICIEL B « Métré », « Structure », « Fluides ». MAXI 3 MOTS.
nom_pdf: logicielA-logicielB.pdf // REMPLACER « logicielA » et « LogicielB »
maj: janvier 2018 // DATE DE MISE A JOUR
---
```

* [Créer une nouvelle fiche](https://github.com/bimstandards/bimstandards/new/gh-pages/_fiches), coller le texte et compléter les métadonnées suivant commentaires  après caractères « // ». 

* En haut de la page, nommer le fichier de la façon suivante : `logicielA-logicielB.md`, par exemple `allplan-sciaengineer.md` (tout en minuscule).

* Puis cliquer en bas de page sur « Commit new file ».

### Etape 3 : Ajouter la fiche au format .pdf

Dans le répertoire `_fiches`, [ajouter le fichier pdf](https://github.com/bimstandards/bimstandards/upload/gh-pages/_fiches) nommé de la façon suivante (comme pour les métadonnées) : `logicielA-logicielB.pdf`, par exemple `allplan-sciaengineer.pdf` (tout en minuscule).
