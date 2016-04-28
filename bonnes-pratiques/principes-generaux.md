---
layout: bonnes-pratiques
title: Principes généraux
group: bonnes-pratiques
---

# Principes généraux

## Formats d'échanges
Les modèles de données doivent pouvoir être échangés au travers du format **IFC 2x3 TC1**, conforme à la norme ISO 10303-21:2002, avec l'extension de fichier `.ifc`. La version IFC 4, bien que publiée officiellement, n'est pas encore implémentée dans tous les logiciels-métiers. Une liste des logiciels compatibles en import/export est disponible sur le site [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/).

{% include collapse-open.html titre="Vérifier la version d'un fichier IFC" %}
En ouvrant un fichier .ifc avec un éditeur de texte, il est possible d'identifier la version du fichier dans les premières lignes, par exemple : `FILE_SCHEMA(('IFC2X3'));`.
![capture](/assets/img/bp_ifc_version.png)
{% include collapse-close.html %}

## Catégories d'objets

De manière générale, les éléments du bâti seront modélisés avec les outils adéquats dans les logiciels-métiers. Par exemple, bien utiliser l'outil "poteau" pour un objet `IfcColumn`.

Il faut à tout prix éviter de "forcer" les classifications IFC des objets, car cela leur fait perdre une logique de construction géométrique pouvant fausser les quantitatifs ou simulations. L'utilisation des objets "proxy" (`IfcBuildingElementProxy`) devra être évitée au maximum ; en cas d'utilisation, le nom de l'objet (`IfcBuildingElementProxy.Name`) explicitera la qualité de l'objet en question.

Chaque intervenant veillera donc à bien renseigner la classe IFC de chaque objet. Une traduction des classifications est disponible sur [cette page](http://bimstandards.fr/ifc/classifications/architecture.html).

{% include collapse-open.html titre="Allplan : attribution des classifications IFC" %}
à venir...
{% include collapse-close.html %}

{% include collapse-open.html titre="Archicad : attribution des classifications IFC" %}
Pour chaque objet, la valeur sélectionnée dans le champ "Classification d'élément" permet de définir le "type IFC".

Dans l'exemple ci-dessous, la classification d'élément "Mur" attribue automatiquement le Type IFC "IfcWallStandardCase".

![capture](/assets/img/bp_ifc_classification_archicad.png)
{% include collapse-close.html %}

{% include collapse-open.html titre="Revit : attribution des classifications IFC" %}
à venir...
{% include collapse-close.html %}

<div class="alert alert-danger" role="alert">
  <i class="fa fa-exclamation-triangle"></i> <strong>A faire :</strong>
  Tableau des correspondances ouvrages <-> classes IFC avec progression dans les différentes phases de projet, à titre indicatif. A insérer à partir d'un fichier .csv du dossier data, pour ne pas alourdir la page.
</div>

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
    <tr>
      <th>Catégorie d'objet / Ouvrage</th>
      <th>Classe IFC</th>
      <th>ESQ</th>
      <th>APS</th>
      <th>APD</th>
      <th>PRO</th>
      <th>EXE</th>
      <th>DOE</th>
    </tr>
    </thead>
    <tbody>
      <tr>
        <td>Site</td>
        <td>`IfcSite`</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
      </tr>
    </tbody>
  </table>
</div>

Chaque objet de la maquette possède également un identifiant unique (GUID) du type `"167KXdKof41x8LiwyqdgRN"`, permettant une traçabilité dans les échanges. Attention à bien conserver cet identifiant lors des [imports / exports](#echanges-ifc) de maquettes.

## Types d'objets

Les types (`IfcTypeObject`) permettent de regrouper les objets possédants des caractéristiques communes. Pour éviter des saisies multiples au niveau des occurrences, on inscrira de préférence les propriétés au niveau du type (par exemple : nom du fabricant, matériau, etc.)

Chaque catégorie IFC possède un type associé, par exemple pour une poutre :

* `IfcBeam` (occurrence)
* `IfcBeamType` (type).

## Systèmes

Les systèmes (`IfcSystem`) combinent plusieurs parties d'un ensemble destiné à une fonction unique. Ils sont généralement utilisés pour regrouper des réseaux techniques (chauffage, ventilation, électricité).

## Propriétés d'objets

Les propriétés d'objets se présentent de 3 manières :

* des attributs généraux normalisés : Nom, Description, GUID
* des jeux de propriétés ("Property Sets") également normalisés par l'IFC, spécifiques aux types d'objets
* des jeux de propriétés personnalisés par l'utilisateur, pour couvrir des besoins d'échange non prévus par la norme.

Par exemple pour un mur :

~~~
IfcWallStandardCase
  Attributes (attributs généraux normalisés)
    > GlobalId
    > Name
    > Description
    > ObjectType
  Pset_WallCommon (propriétés normalisés)
    > AcousticRating
    > Combustible
    > Compartmentation
    > ExtendToStructure
    > FireRating
    > IsExternal
    > LoadBearing
    > Reference
    > SurfaceSpreadOfFlame
    > ThermalTransmittance
  F6_Pset_Economiste (propriétés personnalisées)
    > CodeCctp
    > Nomenclature
~~~

Il est conseillé d'utiliser au maximum les jeux de propriétés normalisés afin de faciliter les échanges.

Bien qu'il existe une multitude de propriétés possibles sur chaque objet, il est conseillé de renseigner à minima les propriétés suivantes :

* `Name` : nom de l'occurrence
* `IsExternal` : permet de définir si l'objet fait partie de l'enveloppe du bâtiment (toitures, mur, portes, fenêtres) ; valeur `TRUE` ou `FALSE`
* `LoadBearing` : permet de définir si l'objet est structurel ; valeur `TRUE` ou `FALSE`.

## Unités de travail

L'équipe projet doit adopter des unités de travail communes (longueurs, surfaces, volumes, angles, etc...), qui sont indiquées dans la convention de projet BIM.
Ces unités doivent être configurées dans les réglages [d'import / export IFC](#echanges-ifc).

## Interfaces métiers

Chaque discipline possède des exigences concernant la méthode de modélisation des objets : volumique, analytique, etc...

En fonction des objectifs BIM visés sur le projet, il convient de faire la synthèse entre les différentes intervenants afin d'identifier les éventuels incompatibilités et la méthode de modélisation à adopter.

Voir le chapitre concernant les différents [usages métiers](#usages-mtiers).

## Niveaux de détail

Une spécification des niveaux de développement à chaque phase de projet a été réalisée pour le contexte français par [Syntec Ingénierie](http://www.syntec-ingenierie.fr/) et publiée dans un [Cahier Pratique Le Moniteur - BIM/Maquette Numérique](http://www.syntec-ingenierie.fr/actualites/2014/08/29/bimmaquette-numerique-contenu-et-niveaux-de-developpement/). Son objectif est de définir des exigences sur le contenu général de la maquette numérique à chaque phase et pour les différents lots.

La [spécification LOD](http://bimforum.org/lod/) (Level of Development), développée aux Etats-Unis par l'organisation [BIMFORUM](http://bimforum.org/), s'attache plutôt à une niveau de détail par objet, indépendamment des phases de projet.

Tableau des Niveaux de Développement :

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
    <tr>
      <th>ND (Niveau de Développement)</th>
      <th>Correspondance loi MOP</th>
    </tr>
    </thead>
    <tbody>
      <tr>
        <td>ND 1</td>
        <td>Esquisse</td>
      </tr>
      <tr>
        <td>ND 2</td>
        <td>Avant-Projet Sommaire, Permis de Construire</td>
      </tr>
      <tr>
        <td>ND 3</td>
        <td>Avant-Projet Détaillé, Pré-Synthèse, PRO/DCE</td>
      </tr>
      <tr>
        <td>ND 4</td>
        <td>Synthèse, Etudes d'exécution, construction</td>
      </tr>
      <tr>
        <td>ND 5</td>
        <td>Dossier des Ouvrages Exécutés</td>
      </tr>
      <tr>
        <td>ND 6</td>
        <td>Exploitation</td>
      </tr>
    </tbody>
  </table>
</div>
