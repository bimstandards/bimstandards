---
layout: default-toc
group: bonnes-pratiques
title: Principes généraux
description: Informations de base sur la structuration d'un fichier IFC, la classification des objets, les niveaux de détail.
comments: true
icon: info-circle
category: regles-base
ordre: 1
status: publish
---

# Principes généraux

## Formats d'échanges
Les modèles de données doivent pouvoir être échangés au travers du format **IFC 2x3 TC1**, conforme à la norme ISO 10303-21:2002, avec l'extension de fichier `.ifc`. La version IFC 4, bien que publiée officiellement, n'est pas encore implémentée dans tous les logiciels-métiers. Une liste des logiciels compatibles en import/export est disponible sur le site [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/).

En ouvrant un fichier .ifc avec un éditeur de texte, il est possible d'identifier la version du fichier dans les premières lignes, par exemple : `FILE_SCHEMA(('IFC2X3'));`.
![capture]({{ site.url }}/assets/img/bp_ifc_version.png)

## Catégories d'objets

De manière générale, les éléments du bâti seront modélisés avec les outils adéquats dans les logiciels-métiers. Par exemple, bien utiliser l'outil "poteau" pour un objet `IfcColumn`.

Il faut à tout prix éviter de "forcer" les classifications IFC des objets, car cela leur fait perdre une logique de construction géométrique pouvant fausser les quantitatifs ou simulations. L'utilisation des objets "proxy" (`IfcBuildingElementProxy`) devra être évitée au maximum ; en cas d'utilisation, le nom de l'objet (`IfcBuildingElementProxy.Name`) explicitera la qualité de l'objet en question.

Chaque intervenant veillera donc à bien renseigner la classe IFC de chaque objet. Une traduction exhaustive des classifications est disponible sur [cette page]({{ site.url }}/standards/objets-ifc/).

{% include fiche-archicad.html titre="Archicad : attribution des classifications IFC" lien="attribution-classifications-ifc" %}

## Identifiant unique (GUID)

Chaque objet de la maquette possède également un identifiant unique (GUID) du type `"167KXdKof41x8LiwyqdgRN"`, permettant une traçabilité dans les échanges. Attention à bien conserver cet identifiant lors des [imports / exports]({{ site.url }}/bonnes-pratiques/regles-base/imports-exports-ifc) de maquettes.

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
Ces unités doivent être configurées dans les réglages [d'import / export IFC]({{ site.url }}/bonnes-pratiques/regles-base/imports-exports-ifc).

## Interfaces métiers

Chaque discipline possède des exigences concernant la méthode de modélisation des objets : volumique, analytique, etc...

En fonction des objectifs BIM visés sur le projet, il convient de faire la synthèse entre les différentes intervenants afin d'identifier les éventuels incompatibilités et la méthode de modélisation à adopter.

Voir les différentes pages concernant les  [usages métiers]({{ site.url }}#bonnes-pratiques).

## Niveaux de développement

Les niveaux de développement ont été développés afin de délimiter la qualité et la précision à intégrer dans une maquette numérique à chaque phase de projet. Différentes spécifications ont été développées selon les besoins et les pays.

Au niveau mondial, la plus reconnue à l'heure actuelle est la [spécification LOD](http://bimforum.org/lod/) (Level of Development), développée aux Etats-Unis par l'organisation [BIMFORUM](http://bimforum.org/). Elle s'attache à décrire différents niveaux de développements pour chaque type d'objet composant le bâti.

En France, une spécification plus synthétique des niveaux de développement par phase de projet a été réalisée par [Syntec Ingénierie](http://www.syntec-ingenierie.fr/) et publiée dans un [Cahier Pratique Le Moniteur - BIM/Maquette Numérique](http://www.syntec-ingenierie.fr/2014-05-09-cahier-moniteur-bim-maquette-contenu-niveau-developpement/). Son objectif est de définir des exigences sur le contenu général de la maquette numérique à chaque phase et pour les différents lots de le construction.

Voici les différents Niveaux de Développement définis par Syntec Ingénierie :

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

Pour en savoir plus sur sur l'historique des niveaux de développement, voir l'article (en anglais) [THE MANY FACES OF ‘LOD’](http://www.bimthinkspace.com/2016/07/the-many-faces-of-lod.html), par Marzia Bolpagni sur le site [BIM ThinkSpace](http://www.bimthinkspace.com/).

## Sources

* [documentation IFC2x3-TC1](http://www.buildingsmart-tech.org/ifc/IFC4/Add1/html/)
* [documentation IFC4-Add1](http://www.buildingsmart-tech.org/ifc/IFC4/Add1/html/)
* [Statsbygg BIM Manual](http://www.statsbygg.no/Files/publikasjoner/manualer/StatsbyggBIM-manual-ver1-2-1eng-2013-12-17.pdf) (page 30/98)
* [COBIM 2012](http://www.en.buildingsmart.kotisivukone.com/3)
* [AEC (UK) BIM Protocol v2.0](https://aecuk.wordpress.com/documents/)
* [Allplan BIM Compendium Theory and Practice](https://www.allplan.com/fileadmin/user_upload/_corp/Home/Aktionsseiten/BIM_Leitfaden/EN/Allplan_BIM_Compendium.pdf)
* [IFC Reference Guide for ARCHICAD](http://www.graphisoft.com/downloads/addons/ifc/index.html)
* [Echange de maquette IFC entre CYPECAD MEP et Allplan](https://cypecommunity.zendesk.com/hc/fr/articles/204525969-Echange-de-maquette-IFC-entre-CYPECAD-MEP-et-Allplan)
* [Protocole de modélisation et d'exportation d'une maquette IFC depuis ArchiCAD vers CYPECAD MEP](https://cypecommunity.zendesk.com/hc/fr/articles/204281509-Protocole-de-modélisation-et-d-exportation-d-une-maquette-IFC-depuis-ArchiCAD-vers-CYPECAD-MEP)
* [Protocole de modélisation et d'exportation d'une maquette IFC depuis REVIT vers CYPECAD MEP](https://cypecommunity.zendesk.com/hc/fr/articles/201766699-Protocole-d-exportation-d-une-maquette-IFC-depuis-REVIT-et-importation-dans-CYPECAD-MEP-)
* [BIMFORUM LOD](http://bimforum.org/lod/)
* [Cahier Pratique - BIM / Maquette Numérique](http://www.syntec-ingenierie.fr/actualites/2014/08/29/bimmaquette-numerique-contenu-et-niveaux-de-developpement/)
* [Blog Areo](http://blog.areo.io/)
