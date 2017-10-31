---
layout: methode-revit
group: bonnes-pratiques
title: Importer un fichier IFC Archicad comme référence dans Revit
comments: true
---

> Pour un échange optimal, voir l'article correspondant au logiciel source :
> 
> * ARCHICAD : exporter un fichier IFC pour Revit
> * Allplan : exporter un fichier IFC pour Revit

{% include callout-open.html param="warning" %}
**Attention !**

Pour une coordination réussie entre différentes maquettes, la géolocalisation doit être réalisée dans la maquette architecte, puis cette dernière importée en tant que référence AVANT toute modélisation dans les autres logiciels spécialisés.

-- schéma --
{% include callout-close.html %}

Prérequis à prend en compte sans exception :

1. Avoir installé le dernier [Service Pack](https://knowledge.autodesk.com/support/revit-products/downloads) pour Revit
2.	Avoir installé le module "[IFC for Revit](https://sourceforge.net/projects/ifcexporter/files/)" (disponible pour les versions 2012 à 2018 de Revit)
3.	Avoir installé le module "[ARCHICAD Connection for Revit](http://www.graphisoft.com/downloads/interoperability.html)". Les versions précédentes sont disponibles en [archive](http://www.graphisoft.com/downloads/addons/interoperability/Archive.html).

> Il est recommandé d'utiliser systématiquement l'Add-In "ARCHICAD Connection for Revit" pour toutes les opération d'import/export avec ARCHICAD.
> ![capture]({{ site.url }}/assets/img/bp_revit_acfr_ruban.png)

---

## Conseils préalables

**Vérifications de modèle**

* **Important** - Valider au préalable les étapes de la page [Autocontrôle](/autocontrole/).

**Contrôle visuel**

Il est recommandé d'effectuer un contrôle systématique des fichiers IFC à réception ou avant envoi à un tiers. Cela permet de prévenir toute erreur avant import dans le logiciel-métier. Il est possible d'utiliser un viewer IFC gratuit parmi ceux proposés dans la liste suivante :

* **Solibri Model Viewer** (PC ou Mac) : [http://www.solibri.com/products/solibri-model-viewer/](http://www.solibri.com/products/solibri-model-viewer/)
* **Tekla BIMsight** (PC) : [http://www.teklabimsight.com/](http://www.teklabimsight.com/)
* **BIM Vision** (PC) : [http://bimvision.eu/en/download/](http://bimvision.eu/en/download/)

## Méthode

Il existe deux manières d'importer un IFC dans Revit :

* **Méthode 1 - lier RVT avec import IFC amélioré** : pour un échange de données (permet de récupérer des informations sur les zones par exemple).
* **Méthode 2 - lier IFC** : pour insérer un fichier en tant que référence géométrique (pour de la synthèse 3D)

### Méthode 1 : lier RVT avec import IFC amélioré

Voici les étapes à suivre :

* Dans un fichier Revit vierge, importer le fichier IFC avec "Revit Connection Add-In" (sélectionner "Improved IFC Import" dans l'onglet "Compléments" du ruban)
* Enregistrer le fichier au format RVT
* Ouvrir le modèle Revit principal et faire "Lier RVT" dans le menu Insertion.

![capture]({{ site.url }}/assets/img/bp_revit_acfr_improved_ifc_import.png)

> L'un des avantages de cette méthode est de pouvoir visualiser les Pièces (zones ARCHICAD) dans le modèle Revit. Si les pièces converties ne sont pas visibles, un guide est disponible à [cette adresse](http://blogs.rand.com/support/2013/01/revit-cannot-see-the-linked-models-room-tags.html).

### Méthode 2 : lier IFC

Voici les étapes à suivre :

* Lier IFC avec "Revit Connection Add-In" (sélectionner "Link IFC" dans l'onglet "Compléments" du ruban)

![capture]({{ site.url }}/assets/img/bp_revit_acfr_link_ifc.png)

> Avec cette méthode, il n'est pas possible de modifier des éléments du fichier IFC dans Revit. Si le fichier source IFC est mis à jour, il est possible de recharger les modifications dans Revit via "Gestion des liens" (menu Insérer).

###



### Bugs possibles

* Certains réglages par défaut de Revit font que des éléments du modèle peuvent être masqués à l'import du fichier IFC. Pour éviter cela, il faut les activer dans la boîte de dialogue "Visibilité/Graphismes".

## Sources

* **IFC ARCHICAD & REVIT - Bonnes pratiques** [PDF en ligne - mis à jour en mai 2017]. Abvent, 2017. Disponible sur : [https://archicad.fr/download/guide-ifc-abvent/?wpdmdl=14005](https://archicad.fr/download/guide-ifc-abvent/?wpdmdl=14005)
* **Les bonnes pratiques BIM IFC dans Revit** [PDF en ligne]. Autodesk, 2016. Disponible sur : [http://abcdblog.typepad.com/abcd/2016/05/Livre_blanc_Autodesk-Bonnes_Pratiques_BIM-Revit-IFC.pdf](http://abcdblog.typepad.com/abcd/2016/05/Livre_blanc_Autodesk-Bonnes_Pratiques_BIM-Revit-IFC.pdf)
* **Guidance notes for Autodesk Revit users exchanging models with Graphisoft ARCHICAD** [Article en ligne]. BIM Blog, Bond Bryan Digital. Disponible sur : [http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/](http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/)
