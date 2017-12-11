---
layout: methode-archicad
group: bonnes-pratiques
title: Exporter un fichier IFC
comments: true
---

## Conseils préalables

**Vérifications de modèle**

* **Important** - Valider au préalable les étapes de la page "Autocontrôle".

**Export vers Revit**

* **Géométrie de site** - Les éléments classifiés comme "Site" dans ARCHICAD et exportés avec le réglage de traducteur "Géométrie site IFC : Jeu géométrique (filaire)" ne sont pas visibles dans Revit avec la méthode "Lier IFC". La solution est d'utiliser un réglage de traducteur différent ou de classifier les éléments comme "Elément de construction non défini" (`IfcBuildingElementProxy`).
* **Revêtements** - Les éléments classifiés comme "Plafond", "Dalle" ou "Revêtement" dans ARCHICAD et exportés comme `IfcCovering` conformément à la norme IFC sont tous importés comme une seule catégorie dans Revit.
* **Hauteur de porte égale à la hauteur de mur** - Les murs qui contiennent un porte avec la même hauteur font que la porte disparait dans Revit. Les murs dans ARCHICAD doivent donc être modélisés légèrement plus haut que les portes pour éviter ce bug.
* **Hauteur de zone** - Toutes les zones (`IfcSpace`) transférées dans Revit apparaissent avec une hauteur par défaut de **???** quelle que soit la hauteur configurée dans l'outil zone d'ARCHICAD.
* **Débattement de porte** - Avec la méthode "Lier IFC" dans Revit, les traits de débattement de porte ne s'affichent pas correctement en plan. Il faut ouvrir le fichier IFC ou le convertir en fichier natif Revit pour corriger le bug.

**Contrôle visuel**

Il est recommandé d'effectuer un contrôle systématique des fichiers IFC à réception ou avant envoi à un tiers. Cela permet de prévenir toute erreur avant import dans le logiciel-métier. Il est possible d'utiliser un viewer IFC gratuit parmi ceux proposés dans la liste suivante :

* **Solibri Model Viewer** (PC ou Mac) : [http://www.solibri.com/products/solibri-model-viewer/](http://www.solibri.com/products/solibri-model-viewer/)
* **Tekla BIMsight** (PC) : [http://www.teklabimsight.com/](http://www.teklabimsight.com/)
* **BIM Vision** (PC) : [http://bimvision.eu/en/download/](http://bimvision.eu/en/download/)

## Méthode



## Options d'export IFC



## Sources

* **IFC ARCHICAD & REVIT - Bonnes pratiques** [PDF en ligne - mis à jour en mai 2017]. Abvent, 2017. Disponible sur : [https://archicad.fr/download/guide-ifc-abvent/?wpdmdl=14005](https://archicad.fr/download/guide-ifc-abvent/?wpdmdl=14005)
* **Les bonnes pratiques BIM IFC dans Revit** [PDF en ligne]. Autodesk, 2016. Disponible sur : [http://abcdblog.typepad.com/abcd/2016/05/Livre_blanc_Autodesk-Bonnes_Pratiques_BIM-Revit-IFC.pdf](http://abcdblog.typepad.com/abcd/2016/05/Livre_blanc_Autodesk-Bonnes_Pratiques_BIM-Revit-IFC.pdf)
* **Guidance notes for Autodesk Revit users exchanging models with Graphisoft ARCHICAD** [Article en ligne]. BIM Blog, Bond Bryan Digital. Disponible sur : [http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/](http://bimblog.bondbryan.com/guidance-notes-for-autodesk-revit-users-exchanging-models-with-graphisoft-archicad/)
* **IFC TRANSLATORS VOOR ARCHICAD** [Article en ligne]. DANKERS SLIMMER BOUWEN. Disponible sur : [https://dankersslimmerbouwen.nl/content/ifc-translators-voor-archicad](https://dankersslimmerbouwen.nl/content/ifc-translators-voor-archicad)
