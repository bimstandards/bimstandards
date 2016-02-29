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
Le modèle de données doit pouvoir être échangé au travers du format **IFC 2x3 TC1**, conforme à la norme ISO 10303-21:2002. La version IFC 4, bien que publiée officiellement, n'est pas encore implémentée dans tous les logiciels-métiers. Une liste des logiciels compatibles en import/export est disponible sur le site [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/).

{% collapse Vérifier la version d'un fichier IFC %}
En ouvrant un fichier .ifc avec un éditeur de texte, il est possible d'identifier la version du fichier dans les premières lignes, par exemple : `FILE_SCHEMA(('IFC2X3'));`.
![capture](/assets/img/bp_ifc_version.png)
{% endcollapse %}

## Classifications d'objets

De manière générale, les éléments du bâti seront modélisés avec les outils adéquats dans les logiciels-métiers. Par exemple, bien utiliser l'outil "poteau" pour un objet `IfcColumn`.

Il faut à tout prix éviter de "forcer" les classifications IFC des objets, car cela leur fait perdre une logique de construction géométrique pouvant fausser les quantitatifs ou simulations.

Chaque intervenant veillera donc à bien renseigner le type IFC de chaque objet. Une traduction des classifications est disponible sur [cette page](http://bimstandards.fr/ifc/classifications/architecture.html).

{% collapse Allplan : attribution des classifications IFC %}
A venir.
{% endcollapse %}

{% collapse Archicad : attribution des classifications IFC %}
Pour chaque objet, la classification IFC est définie dans le champ "Classification d'élément".

![capture](/assets/img/bp_ifc_classification_archicad.png)
{% endcollapse %}

{% collapse Revit : attribution des classifications IFC %}
A venir.
{% endcollapse %}

Chaque objet de la maquette possède également un identifiant unique (GUID) du type `"167KXdKof41x8LiwyqdgRN"`, permettant une traçabilité dans les échanges. Attention à bien conserver cet identifiant lors des [imports / exports](#echanges-ifc) de maquettes.

## Unités de travail

L'équipe projet doit adopter des unités de travail communes (longueurs, surfaces, volumes, angles, etc...), qui sont indiquées dans la convention de projet BIM.
Ces unités doivent être configurées dans les réglages [d'import / export IFC](#echanges-ifc).

## Interfaces métiers

Chaque discipline possède des exigences concernant la méthode de modélisation des objets : volumique, analytique, etc...

En fonction des objectifs BIM visés sur le projet, il convient de faire la synthèse entre les différentes intervenants afin d'identifier les éventuels incompatibilités et la méthode de modélisation à adopter.

Voir le chapitre concernant les différents [usages métiers](#usages-mtiers).

## Niveaux de détail

Le niveau de développement (informations et géométrie) doit être adapté à chaque phase de projet.

**Attention** : différence entre niveaux de développement et niveaux de détail !

Une spécification des niveaux de dévelopement a été réalisée pour le contexte français par [Syntec Ingénierie](http://www.syntec-ingenierie.fr/) et publiée dans un [Cahier Pratique Le Moniteur - BIM/Maquette Numérique](http://www.syntec-ingenierie.fr/actualites/2014/08/29/bimmaquette-numerique-contenu-et-niveaux-de-developpement/).

Elle est inspirée de la [spécification LOD](http://bimforum.org/lod/) (Level of Development), développée aux Etats-Unis par l'organisation [BIMFORUM](http://bimforum.org/).

Tableau des correspondances LOD-ND :

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
    <tr>
      <th>LOD (Level of Development)</th>
      <th>ND (Niveau de Développement)</th>
      <th>Phase loi MOP</th>
    </tr>
    </thead>
    <tbody>
      <tr>
        <td>LOD 100</td>
        <td>ND 1</td>
        <td>Esquisse</td>
      </tr>
      <tr>
        <td>LOD 200</td>
        <td>ND 2</td>
        <td>Avant-Projet Sommaire, Permis de Construire</td>
      </tr>
      <tr>
        <td>LOD 300</td>
        <td>ND 3</td>
        <td>Avant-Projet Détaillé, Pré-Synthèse, PRO/DCE</td>
      </tr>
      <tr>
        <td>LOD 350</td>
        <td>ND 4</td>
        <td>Synthèse, Etudes d'exécution, construction</td>
      </tr>
      <tr>
        <td>LOD 400</td>
        <td>ND 5</td>
        <td>Dossier des Ouvrages Exécutés</td>
      </tr>
      <tr>
        <td>LOD 500</td>
        <td>ND 6</td>
        <td>Exploitation</td>
      </tr>
    </tbody>
  </table>
</div>

# 2. Organisation spatiale

## Arborescence IFC

Tout projet doit être organisé avec l'arborescence spatiale `Projet > Site > Bâtiment > Niveau > Local > Ouvrage` dont la représentation IFC est la suivante :

~~~
IfcProject                  (Projet)
  > IfcSite                 (Site)
    > IfcBuilding           (Bâtiment)
      > IfcBuildingStorey   (Niveau)
        >                   (Ouvrage)
        > IfcProduct        (Equipement)
        > IfcSpace          (Local)
          > IfcProduct      (Equipement)
~~~

Un fichier IFC ne doit contenir qu'un seul bâtiment. Pour gérer plusieurs bâtiments appartenant au même site, il faut créer autant de fichiers natifs que de bâtiments en leur attribuant un même nom de projet (`IfcProject`) et de site (`IfcSite`).

Pour une bonne structure de fichier IFC, il est conseillé de renseigner à minima les attributs `IfcProject.Name`, `IfcSite.Name` et `IfcBuilding.Name`.

Les objets de la maquette seront attachés aux locaux et niveaux.

{% collapse Archicad : activer les relations spatiales %}
Pour activer la relation spatiale entre pièces et équipements, vérifier que l'option "Contenu spatial" est bien sélectionnée dans "Fichier > Fichier spécial > IFC 2x3 > Options IFC...".
![capture](/assets/img/bp_archicad_contenu_spatial.png)
{% endcollapse %}

### Projet

La classe `IfcProject` est le plus haut niveau de l'arborescence d'un fichier IFC.

### Site

La classe `IfcSite` définit le terrain sur lequel est situé le bâtiment. Le nom du terrain est indiqué dans l'attribut `IfcSite.Name`.

Cette classe est principalement destinée à établir le [géoréférencement](#gorfrencement) du projet.

### Bâtiment

La classe `IfcBuilding` inclut l'ensemble des éléments formant le bâtiment.

### Niveaux

Les niveaux doivent respecter la logique spatiale de l'édifice. Il est déconseillé d'utiliser des niveaux fictifs pour régler de façon simultanée les hauteurs de certains éléments. De même, tout niveau fictif (ex: plan masse) devra être exclu de l'export IFC.

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

### Locaux

Chaque local est représenté par un objet `IfcSpace` correspondant aux limites spatiales de cette pièce, dans les trois dimensions.

Le code (numéro) du local est inséré dans le champ `IfcSpace.Name`, tandis que son nom (ex: chambre, bureau) est renseigné dans le champ `IfcSpace.LongName`. Le code est généralement basé sur une nomenclature propre au maître d'ouvrage.

Il est possible de définir des relations entre plusieurs locaux à l'aide de la classe `IfcZone` (ex: plusieurs locaux appartenant à un même logement ou à un même compartiment protégé contre le feu).

## Géoréférencement

Chaque maquette est située dans l'espace par rapport à un point zéro projet qui doit être commun à toutes les disciplines pour garantir une parfaite superposition des différentes maquettes numériques. Idéalement, le point zéro du projet se trouvera à l'intersection de deux axes, ce qui permettra de le resituer facilement.

{% callout danger %}
**Attention !:**
La modélisation doit projet doit se situer à proximité du point zéro pour éviter des abberations géométriques.
{% endcallout %}

La correspondance de ce zéro projet avec les coordonnées géographiques réelles se fait via les attributs `IfcSite.RefLatitude` et `IfcSite.RefLongitude` exprimés en degrés, minutes, secondes ; ainsi que la valeur d'altitude via l'attribut `IfcSite.RefElevation`.

Le projet doit toujours être modélisé en orientation réelle (nord géographique en haut, sur la coordonnée Y) ; les vues orientées au besoin sont gérées par le logiciel-métier.

## Axes du projet

Il est important de définir au plus tôt les axes du projet (`IfcGrid`), correspondant aux files porteuses.

Les axes et le point zéro commun seront communiqués en début de projet par fichier IFC ou référence DWG.

## Méthode de modélisation

Assemblage des murs, dalles, cloisons.

En cas de doute, modéliser comme on construit.

Gestion des éléments groupés (murs) ? Murs en un bloc.

## Catégories d'objets

voir classifications détaillées.

Tableau des correspondances ouvrages <-> classes IFC avec progression dans les différentes phases de projet, à titre indicatif.

Voir page spécifique pour plus de détails sur les `IfcTypeProduct` et `PredefinedType`.

Archicad : régler les classifications

Question de la classification Uniformat II ???

## Types d'objets

Les types d'objets (`IfcTypeObject`) permettent de regrouper sous un même nom les objets possédants des caractéristiques communes.

## Systèmes

Pour les réseaux (`IfcSystem`).

# 3. Usages-métiers

Voir cas d'usage définis par Mediaconstruct.

http://bimetric.list.lu/wp-content/uploads/2015/09/LISTE_CAS_-DUSAGE.pdf

## Maîtrise d'ouvrage

* validation du projet en regard du programme.

## Economie

L'utilisation de la maquette numérique pour l'économie du projet nécessite plusieurs points de vigilance dans l'élaboration et l'export IFC :

* pour la **quantification**, veiller à utiliser les commandes logicielles correspondants aux bonnes [catégories d'objets](#catgories-dobjets) pour conserver la logique géométrique permettant l'extraction de quantités.
* pour le découpage du projet en **ouvrages**, il est conseillé d'utiliser une classification adaptée, soit dans le nom de l'objet, soit dans le champ `IfcClassificationReference`. On pourra par exemple utiliser la classification *Uniformat II* qui répond également aux besoins de gestion de patrimoine, ou une classification propre à l'équipe de maîtrise d'oeuvre.
* pour l'attribution de **propriétés spécifiques** aux ouvrages, on veillera à utiliser les *"Property Sets"* adaptés. On pourra ainsi spécifier un certains nombre d'attributs utiles aux nomenclatures de locaux, parois, finitions, menuiseries, etc...

## Structure

La conception structurelle en processus BIM fait intervenir deux types de modélisation :

* **modélisation filaire** (analytique) pour les calculs de stabilité / descentes de charges.
* **modélisation par objets** pour la définition géométrique des sections structurelles.

Dans un processus de conception classique, l'architecte est le premier intervenant à dessiner un principe structurel, qu'il transmettra ensuite à l'ingénieur structure. Il faut donc veiller à respecter au maximum la conception filaire de la structure.

{% collapse Archicad : définition des axes structurels %} à venir... {% endcollapse %}

Pour chaque objet du domaine structure, renseigner à minima les attributs suivants :

* `LoadBearing = true` (pour les objets `IfcSlab`, `IfcWall`, `IfcColumn`)
* `IfcMaterial.Name`

{% collapse Archicad : Vérifier les attributs %}
à venir...
{% endcollapse %}

## Thermique

La modélisation pour l'analyse énergétique est la problématique d'échanges BIM la plus complexe. Elle nécessite le découpage du bâtiment en zones thermiques, qui ne correspondent pas forcément à la limite spatiale des locaux, et qui ne répondent pas à la même logique de décomposition du bâti en objets.

`IfcSpaceBoundary`

**Attention** : Gestion des joints de dilatation.

## Gestion de patrimoine

La gestion de patrimoine nécessite une classification complémentaire à l'IFC pour l'organisation des données non-graphiques. Parmi ces classifications, on peut citer :

* Uniformat (US)
* Omniclass
* Uniclass (UK)

La première entité IFC utile à la gestion de patrimoine est le local (`IfcSpace`). En effet, cet objet peut contenir un certain nombre de propriétés utiles :

* identification des espaces
* calculs de surfaces
* finitions de sols, murs, plafonds
* risques incendie
* etc ...

Voir les Property Sets de la classe `IfcSpace`.

Les autres objets les plus utiles sont ceux qui nécessitent un suivi et une maintenance spécifique, c'est-à-dire les équipements et terminaux.

# 4. Echanges IFC

Paramètres d'export IFC à vérifier :

* activer l'export des **quantités de base** (longueurs, surfaces, volumes des éléments)
* activer l'export des **limites d'espaces** (utile pour la thermique)

En fonction du cas d'usage correspondant à l'échange de fichier IFC, il est conseillé d'utiliser un MVD.

{% callout danger %}
**Note :**
Après l'export, il est conseillé d'ouvrir le fichier IFC dans une visionneuse (Solibri, Tekla BIMsight) afin de vérifier que la géométrie et les données sont correctes.
{% endcallout %}

## Anonymat

En cas de remise d'une maquette IFC à un concours placé sous anonymat, il est impératif de vérifier qu'aucune information nominative ne soit présente dans le contenu du fichier.

Généralement, les informations personnelles peuvent être contenues aux lignes `FILE_NAME`, `IFCPERSON`, `IFCACTORROLE`, `IFCPOSTALADDRESS`, `IFCTELECOMADDRESS`, `IFCORGANIZATION`, `IFCPERSONANDORGANIZATION`, `IFCOWNERHISTORY`.

{% collapse Vérifier l'anonymat avec un éditeur de texte %}

Après l'export du fichier IFC, l'ouvrir avec un éditeur de texte basique type "Bloc-notes" sur Windows ou "TextEdit" sur Mac.

Identifier, éventuellement en effectuant une recherche de texte, les lignes pouvant contenir des informations sur l'émetteur du fichier. **Attention** à ne pas supprimer ces lignes (sous peine de corrompre le fichier) mais plutôt à remplacer les informations non désirées par des caractères anonymes.

![anonymat](/assets/img/bp_ifc_anonymat.png)

{% endcollapse %}

http://la-boutique-du-bim.blogspot.fr/2015/05/comment-masquer-lorigine-dune-maquette.html

# 5. Sources

* documentation IFC 2x3 et IFC 4
* VA BIM Guide
* Statsbygg BIM Manual
* COBIM 2012
* AEC (UK) BIM Protocol 2.0
* [Allplan BIM Compendium Theory and Practice](https://www.allplan.com/fileadmin/user_upload/_corp/Home/Aktionsseiten/BIM_Leitfaden/EN/Allplan_BIM_Compendium.pdf)
* [IFC Reference Guide for ARCHICAD](http://www.graphisoft.com/downloads/addons/ifc/index.html)
* [Echange de maquette IFC entre CYPECAD MEP et Allplan](https://cypecommunity.zendesk.com/hc/fr/articles/204525969-Echange-de-maquette-IFC-entre-CYPECAD-MEP-et-Allplan)
* [Protocole de modélisation et d'exportation d'une maquette IFC depuis ArchiCAD vers CYPECAD MEP](https://cypecommunity.zendesk.com/hc/fr/articles/204281509-Protocole-de-modélisation-et-d-exportation-d-une-maquette-IFC-depuis-ArchiCAD-vers-CYPECAD-MEP)
* [Protocole de modélisation et d'exportation d'une maquette IFC depuis REVIT vers CYPECAD MEP](https://cypecommunity.zendesk.com/hc/fr/articles/201766699-Protocole-d-exportation-d-une-maquette-IFC-depuis-REVIT-et-importation-dans-CYPECAD-MEP-)

http://bimforum.org/lod/

http://www.syntec-ingenierie.fr/actualites/2014/08/29/bimmaquette-numerique-contenu-et-niveaux-de-developpement/
