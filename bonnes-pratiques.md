---
layout: bonnes-pratiques
title: Bonnes pratiques
---

{% callout warning %}
**Préambule :**
Ce guide a été réalisé afin de renseigner sur les "bonnes pratiques" à adopter pour l'élaboration d'un projet BIM, en terme de modélisation et de renseigner de la maquette numérique ; il peut constituer une base de "**cahier des charges BIM**" orienté "convention de modélisation". Ce guide ne constitue en aucun cas une réalité absolue, mais plutôt une base commune à enrichir ; chaque projet impliquant des spécificités.

{% endcallout %}

# 1. Principes généraux

## Formats d'échanges
Le modèle de données doit pouvoir être échangé au travers du format IFC 2x3. Une liste des logiciels compatibles est disponible sur le site [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/).

## Classifications d'objets

Utiliser au maximum les objets natifs des logiciels-métiers, correspondants aux ouvrages réels. Le cas échéant, forcer les classes IFC.

## Informations projet

## Méthodes de modélisation
Assemblage des murs, dalles, cloisons.
En cas de doute, modéliser comme on construit.
Gestion des éléments groupés (murs) ?

## Niveaux de détail

# 2. Structure spatiale

## Arborescence IFC

Tout projet doit être organisé avec l'arborescence spatiale `Projet > Site > Bâtiment > Niveau > Espace > Ouvrage` dont la représentation IFC est `IfcProject > IfcSite > IfcBuilding > IfcBuildingStorey > IfcSpace > IfcProduct`.

Un fichier IFC ne doit contenir qu'un seul bâtiment. Pour gérer plusieurs bâtiments appartenant au même site, il suffit de leur attribuer un nom de projet (`IfcProject`) et de site (`IfcSite`) identique.

Pour une bonne structure de fichier IFC, il est conseillé de renseigner à minima les attributs `IfcProject.Name`, `IfcSite.Name` et `IfcBuilding.Name`.

{% callout danger %}
**Archicad 16/17/18/19 :**
Pour activer la relation spatiale entre espaces et objets, vérifier que l'option "Contenu spatial" est bien sélectionnée dans "Fichier > Fichier spécial > IFC 2x3 > Options IFC...".
{% endcallout %}

## Géoréférencement

## Niveaux

La codification des niveaux est établie par des codes à 2 caractères (`IfcBuildingStorey.Name`) :

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <tbody>
      <tr>
        <td>Rez-de-chaussée</td>
        <th>00</th>
        <td>Correspond au niveau d'accès au bâtiment depuis l'espace public</td>
      </tr>
      <tr>
        <td>Etages</td>
        <th>01, 02, 03, ...</th>
        <td>Niveaux en élévation au-dessus du sol</td>
      </tr>
      <tr>
        <td>Sous-sol</td>
        <th>S1, S2, S3, ...</th>
        <td>Niveaux enterrés</td>
      </tr>
      <tr>
        <td>Toiture</td>
        <th>TT</th>
        <td>Au-dessus du dernier niveau d'étage</td>
      </tr>
    </tbody>
  </table>
</div>

Une description plus complète du niveau peut être définie dans le champ `IfcBuildingStorey.Description`.

Les niveaux doivent respecter la logique spatiale de l'édifice. Il est déconseillé d'utiliser des niveaux fictifs pour régler de façon simultanée les hauteurs de certains éléments.

# 3. Modélisation structure

# 4. Modélisation clos-couvert

# 5. Modélisation second-oeuvre

# 6. Echanges IFC
- quantités de base
- décomposition des structures


# Sources :
* http://bimconseilformation.blogspot.fr/p/revit-architecture.html
* VA BIM Guide
* Statsbygg BIM Manual
* COBIM 2012
* AEC (UK) BIM Protocol 2.0

