---
layout: bonnes-pratiques
title: Bonnes pratiques
---

<div class="alert alert-danger" role="alert">
  <strong>Attention !</strong> Cette page est en cours d'élaboration. Certaines sections peuvent être incomplètes. N'hésitez à apporter votre contribution, notamment pour l'implémentation dans les logiciels-métiers, en cliquant sur le lien en bas de page.
</div>

{% include callout-open.html param="warning" %}
**Préambule :**
Ce guide a été réalisé afin de renseigner sur les "bonnes pratiques" à adopter pour l'élaboration d'un projet BIM, en terme de modélisation et de renseigner de la maquette numérique ; il peut constituer une base de "**cahier des charges BIM**" orienté "convention de modélisation". Ce guide ne constitue en aucun cas une réalité absolue, mais plutôt une base commune à enrichir ; chaque projet impliquant des spécificités.
{% include callout-close.html %}

# 1. Principes généraux

## Formats d'échanges
Les modèles de données doivent pouvoir être échangés au travers du format **IFC 2x3 TC1**, conforme à la norme ISO 10303-21:2002, avec l'extension de fichier `.ifc`. La version IFC 4, bien que publiée officiellement, n'est pas encore implémentée dans tous les logiciels-métiers. Une liste des logiciels compatibles en import/export est disponible sur le site [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/).

{% include collapse-open.html titre="Vérifier la version d'un fichier IFC" %}
En ouvrant un fichier .ifc avec un éditeur de texte, il est possible d'identifier la version du fichier dans les premières lignes, par exemple : `FILE_SCHEMA(('IFC2X3'));`.
![capture]({{ site.url }}/assets/img/bp_ifc_version.png)
{% include collapse-close.html %}

## Classifications d'objets

De manière générale, les éléments du bâti seront modélisés avec les outils adéquats dans les logiciels-métiers. Par exemple, bien utiliser l'outil "poteau" pour un objet `IfcColumn`.

Il faut à tout prix éviter de "forcer" les classifications IFC des objets, car cela leur fait perdre une logique de construction géométrique pouvant fausser les quantitatifs ou simulations. L'utilisation des objets "proxy" (`IfcBuildingElementProxy`) devra être évitée au maximum ; en cas d'utilisation, le nom de l'objet (`IfcBuildingElementProxy.Name`) explicitera la qualité de l'objet en question.

Chaque intervenant veillera donc à bien renseigner le type IFC de chaque objet. Une traduction des classifications est disponible sur [cette page](http://bimstandards.fr/ifc/classifications/architecture.html).

{% comment %}
<!-- {% collapse Allplan : attribution des classifications IFC %} -->
à venir...
<!-- {% endcollapse %} -->
{% endcomment %}

{% comment %}
<!-- {% collapse Archicad : attribution des classifications IFC %} -->
Pour chaque objet, la valeur sélectionnée dans le champ "Classification d'élément" permet de définir le "type IFC".

Dans l'exemple ci-dessous, la classification d'élément "Mur" attribue automatiquement le Type IFC "IfcWallStandardCase".

![capture](/assets/img/bp_ifc_classification_archicad.png)
<!-- {% endcollapse %} -->
{% endcomment %}

{% comment %}
<!-- {% collapse Revit : attribution des classifications IFC %} -->
à venir...
<!-- {% endcollapse %} -->
{% endcomment %}

Chaque objet de la maquette possède également un identifiant unique (GUID) du type `"167KXdKof41x8LiwyqdgRN"`, permettant une traçabilité dans les échanges. Attention à bien conserver cet identifiant lors des [imports / exports](#echanges-ifc) de maquettes.

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

# 2. Organisation spatiale

## Arborescence IFC

Tout projet doit être organisé avec l'arborescence spatiale `Projet > Site > Bâtiment > Niveau > Local > Ouvrage` dont la représentation IFC est la suivante :

~~~
IfcProject                  (Projet)
  > IfcSite                 (Site)
    > IfcBuilding           (Bâtiment)
      > IfcBuildingStorey   (Niveau)
        > IfcProduct        (Produit, Equipement)
        > IfcSpace          (Local)
          > IfcProduct      (Produit, Equipement)
~~~

Le système relationnel est un des fondements de l'IFC ; les objets sont reliés entre eux par la classe `IfcRelContainedInSpatialStructure`. Par exemple, une fenêtre est attachée à un mur, et ce même mur dépend d'un étage. Ces relations sont généralement gérées automatiquement par les logiciels-métier.

Un fichier IFC ne doit contenir qu'un seul bâtiment. Pour gérer plusieurs bâtiments appartenant au même site, il faut créer autant de fichiers natifs que de bâtiments en leur attribuant un même nom de projet (`IfcProject`) et de site (`IfcSite`).

Les éléments `IfcProduct` peuvent être contenues dans un niveau (`IfcBuildingStorey`) ou dans un local (`IfcSpace`), lui-même contenu dans un niveau.

Pour une bonne structure de fichier IFC, il est conseillé de renseigner à minima les attributs `IfcProject.Name`, `IfcSite.Name` et `IfcBuilding.Name`.

{% comment %}
<!-- {% collapse Archicad : activer les relations spatiales %} -->
Pour activer la relation spatiale entre pièces et équipements, vérifier que l'option "Contenu spatial" est bien sélectionnée dans "Fichier > Fichier spécial > IFC 2x3 > Options IFC...".

![capture](/assets/img/bp_archicad_contenu_spatial.png)

Il est possible de visualiser l'arborescence IFC en allant dans le "Gestionnaire IFC" (Fichier > Fichier spécial > IFC 2x3 > Gestionnaire IFC).
<!-- {% endcollapse %} -->
{% endcomment %}

### Projet

La classe `IfcProject` est le plus haut niveau de l'arborescence d'un fichier IFC.

### Site

La classe `IfcSite` définit le terrain sur lequel peuvent être placés un ou plusieurs bâtiments (`IfcBuilding`).

Le nom du terrain est indiqué dans l'attribut `IfcSite.Name`, et le numéro de parcelle cadastre dans le champ `IfcSite.LandTitleNumber`.

Cette classe défini notamment le [géoréférencement](#gorfrencement) du projet.

### Bâtiment

La classe `IfcBuilding` regroupe l'ensemble des objets formant le bâtiment.

Un numéro de bâtiment peut être indiqué dans le champ `Pset_BuildingCommon.BuildingID`.

### Niveaux

Les niveaux, définis par la classe `IfcBuildingStorey`, doivent respecter la logique spatiale de l'édifice, en incluant les mezzanines ou demi-niveaux.

Il est déconseillé d'utiliser des niveaux fictifs pour régler de façon simultanée les hauteurs de certains éléments. Tout niveau fictif d'aide au dessin (ex: plan masse) devra être exclu de l'export IFC.

La codification des niveaux est établie par des codes à 2 caractères dans le champ `IfcBuildingStorey.Name` + une description plus complète du niveau dans le champ `IfcBuildingStorey.LongName`.

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>`IfcBuildingStorey.Name`</th>
        <th>`IfcBuildingStorey.LongName`</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>00</th>
        <th>Rez-de-chaussée</th>
        <td>Correspond au niveau d'accès au bâtiment depuis l'espace public</td>
      </tr>
      <tr>
        <th>01, 02, 03, ...</th>
        <th>Etages</th>
        <td>Niveaux en élévation au-dessus du sol</td>
      </tr>
      <tr>
        <th>S1, S2, S3, ...</th>
        <th>Sous-sol</th>
        <td>Niveaux enterrés</td>
      </tr>
      <tr>
        <th>TT</th>
        <th>Toiture</th>
        <td>Au-dessus du dernier niveau d'étage</td>
      </tr>
    </tbody>
  </table>
</div>

Il est également possible d'indiquer le niveau d'entrée dans le bâtiment avec l'attribut `Pset_BuildingStoreyCommon.EntranceLevel=TRUE` sur le niveau concerné. On pourra également définir les niveaux situés au-dessus du sol avec l'attribut `Pset_BuildingStoreyCommon.AboveGround=TRUE`.

{% comment %}
<!-- {% collapse Archicad : configurer des niveaux %} -->
Les niveaux doivent d'abord être renseignées dans la fenêtre "Dessin > Définir étage...". Le nom renseigné à cet endroit correspond au "code" de niveau à 2 caractères.

Le nom complet (`IfcBuildingStorey.LongName`) doit être renseigné dans le Gestionnaire IFC.

![capture](/assets/img/bp_archicad_niveaux.png)

On peut voir que les informations sont bien présentes dans le *Gestionnaire IFC*, dans les attributs des objets `IfcBuildingStorey`.
<!-- {% endcollapse %} -->
{% endcomment %}

### Locaux

Chaque local est représenté par un objet `IfcSpace` correspondant aux limites spatiales de cette pièce, dans les trois dimensions.

Le code (numéro) du local est inséré dans le champ `IfcSpace.Name`, tandis que son nom (ex: chambre, bureau) est renseigné dans le champ `IfcSpace.LongName`. Le code est généralement basé sur une nomenclature propre au maître d'ouvrage, par exemple sous la forme "SITE_BATIMENT_ETAGE_NUMERO-PIECE".

**Exemple de nomenclature de locaux**

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>`IfcSpace.Name`</th>
        <th>`IfcSpace.LongName`</th>
        <td>Commentaire</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>CE_A_00_001</th>
        <th>Hall d'entrée</th>
        <td>Local "Hall d'entrée" n°001 situé au RDC du bâtiment A, sur le site "Campus Erdre" (CE)</td>
      </tr>
      <tr>
        <th>CE_A_00_012</th>
        <th>Bureau</th>
        <td>Local "Bureau" n°012 situé au RDC du bâtiment A, sur le site "Campus Erdre" (CE)</td>
      </tr>
      <tr>
        <th>CE_A_01_027</th>
        <th>Ménage</th>
        <td>Local "ménage" n°027 situé au niveau 1 du bâtiment A, sur le site "Campus Erdre" (CE)</td>
      </tr>
      <tr>
        <th>CL_D_03_005</th>
        <th>Salle de réunion</th>
        <td>Local "Salle de réunion" n°005 situé au niveau 3 du bâtiment D, sur le site "Campus Loire" (CL)</td>
      </tr>
    </tbody>
  </table>
</div>

{% comment %}
<!-- {% collapse Archicad : configurer les locaux (zones) %} -->
En utilisant la marque de zone Archicad par défaut, les informations basiques (code et nom de local) sont automatiquement transférées dans les bons attributs IFC, comme on peut le voir dans le *Gestionnaire IFC*.

![capture](/assets/img/bp_archicad_zone.png)
<!-- {% endcollapse %} -->
{% endcomment %}

Il est possible de définir des relations entre plusieurs locaux à l'aide de la classe `IfcZone` (ex: plusieurs locaux appartenant à un même logement ou à un même compartiment protégé contre le feu). Un même local peut appartenir à plusieurs zones.

{% comment %}
<!-- {% collapse Archicad : créer des relations entre locaux (zones) %} -->
à venir...
<!-- {% endcollapse %} -->
{% endcomment %}

## Géoréférencement

<div class="alert alert-danger" role="alert">
  <i class="fa fa-exclamation-triangle"></i> <strong>A faire :</strong>
  Section à corriger en fonction de l'IDM <a href="http://iug.buildingsmart.org/idms/information-delivery-manuals/IDM-GeographicalReferencing_10-04-15%20-2.pdf">"Géographical Referencing"</a>.
</div>

Chaque maquette est située dans l'espace par rapport à un point zéro projet qui doit être commun à toutes les disciplines pour garantir une parfaite superposition des différentes maquettes numériques.

Idéalement, le point zéro du projet se trouvera à l'intersection de deux axes, ce qui permettra de le situer facilement. Ou bien à une coordonnée géographique "ronde". Un volume 3D identifiable pourra être placé sur le point zéro afin de permettre un recollage facile des modèles numériques.

Sur l'illustration ci-dessous : montrer un bâtiment non orienté perpendiculairement au Nord, avec flèche vers le nord géographique.

![capture]({{ site.url }}/assets/img/bp_archicad_point_zero.png)

{% include callout-open.html param="danger" %}
**Attention !:**
La modélisation doit projet doit se situer à proximité du point zéro pour éviter des abberations géométriques.
{% include callout-close.html %}

La correspondance de ce zéro projet avec les coordonnées géographiques réelles se fait via les attributs `IfcSite.RefLatitude` et `IfcSite.RefLongitude` exprimés en degrés, minutes, secondes ; ainsi que la valeur d'altitude via l'attribut `IfcSite.RefElevation`.

{% comment %}
<!-- {% collapse Archicad : configurer les coordonnées géographiques %} -->
Les coordonnées doivent être renseignées dans la fenêtre "Emplacement Projet..." (menu : Options > Préférences Projet > Emplacement Projet...).

Les informations qui seront intégrées à l'IFC sont "Latitude", "Longitude" et "Altitude (Niveau de la mer)".

![capture](/assets/img/bp_archicad_emplacement_projet.png)

On peut voir que les informations sont bien présentes dans le *Gestionnaire IFC*, dans les attributs de l'objet `IfcSite`.
<!-- {% endcollapse %} -->
{% endcomment %}

Le projet doit toujours être modélisé en orientation réelle (nord géographique en haut, sur la coordonnée Y) ; les vues orientées au besoin sont gérées par le logiciel-métier.

## Axes du projet

Il est important de définir au plus tôt les axes du projet (`IfcGridAxis`), correspondant aux files porteuses.

Les axes et le point zéro commun seront communiqués en début de projet par fichier IFC ou référence DWG.

{% comment %}
<!-- {% collapse Archicad : outil grille %} -->
Dans Archicad, les axes créés avec l'outil *Elément de grille* sont automatiquement convertis dans la classe `IfcGridAxis`. En revanche, il est normal qu'ils n'apparaissent pas dans le *Gestionnaire IFC*.

![capture](/assets/img/bp_archicad_grille.png)
<!-- {% endcollapse %} -->
{% endcomment %}

## Méthode de modélisation

* En cas de doute, modéliser comme on construit.
* Murs en un bloc.

<div class="alert alert-danger" role="alert">
  <i class="fa fa-exclamation-triangle"></i> <strong>A faire :</strong>
  Indiquer les dépendances d'étages.
</div>

![capture](/assets/img/bp_assemblages.png)

## Catégories d'objets

Voir [classifications `IfcProduct`](http://bimstandards.fr/ifc/classifications/toutes.html).

<div class="alert alert-danger" role="alert">
  <i class="fa fa-exclamation-triangle"></i> <strong>A faire :</strong>
  Tableau des correspondances ouvrages <-> classes IFC avec progression dans les différentes phases de projet, à titre indicatif.
</div>

Voir page spécifique pour plus de détails sur les `IfcTypeProduct` et `PredefinedType`.

## Types d'objets

Les types d'objets (`IfcTypeObject`) permettent de regrouper sous un même nom les objets possédants des caractéristiques communes.

## Systèmes

Pour les réseaux (`IfcSystem`).

# 3. Usages-métiers

<div class="alert alert-danger" role="alert">
  <i class="fa fa-exclamation-triangle"></i> <strong>A faire :</strong>
  Recouper avec les <a href="http://bimetric.list.lu/wp-content/uploads/2015/09/LISTE_CAS_-DUSAGE.pdf">cas d'usage Mediaconstruct</a>.
</div>

## Maîtrise d'ouvrage

* validation du projet en regard du programme.

Les besoins concernant la gestion de patrimoine sont listés [ci-dessous](#gestion-de-patrimoine).

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

{% comment %}
<!-- {% collapse Archicad : définition des axes structurels %} à venir... {% endcollapse %} -->
{% endcomment %}

Pour chaque objet du domaine structure, renseigner à minima les attributs suivants :

* `LoadBearing = true` (pour les objets `IfcSlab`, `IfcWall`, `IfcColumn`)
* `IfcMaterial.Name`

{% comment %}
<!-- {% collapse Archicad : Vérifier les attributs %} -->
à venir...
<!-- {% endcollapse %} -->
{% endcomment %}

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

{% include callout-open.html param="danger" %}
**Note :**
Après l'export, il est conseillé d'ouvrir le fichier IFC dans une visionneuse (Solibri, Tekla BIMsight) afin de vérifier que la géométrie et les données sont correctes.
{% include callout-close.html %}

## Anonymat

En cas de remise d'une maquette IFC à un concours placé sous anonymat, il est impératif de vérifier qu'aucune information nominative ne soit présente dans le contenu du fichier.

Généralement, les informations personnelles peuvent être contenues aux lignes `FILE_NAME`, `IFCPERSON`, `IFCACTORROLE`, `IFCPOSTALADDRESS`, `IFCTELECOMADDRESS`, `IFCORGANIZATION`, `IFCPERSONANDORGANIZATION`, `IFCOWNERHISTORY`.

{% comment %}
<!-- {% collapse Vérifier l'anonymat avec un éditeur de texte %} -->
Après l'export du fichier IFC, l'ouvrir avec un éditeur de texte basique type "Bloc-notes" sur Windows ou "TextEdit" sur Mac.

Identifier, éventuellement en effectuant une recherche de texte, les lignes pouvant contenir des informations sur l'émetteur du fichier. **Attention** à ne pas supprimer ces lignes (sous peine de corrompre le fichier) mais plutôt à remplacer les informations non désirées par des caractères anonymes.

![anonymat](/assets/img/bp_ifc_anonymat.png)
<!-- {% endcollapse %} -->
{% endcomment %}

# 5. Sources

* [documentation IFC2x3-TC1](http://www.buildingsmart-tech.org/ifc/IFC4/Add1/html/)
* [documentation IFC4-Add1](http://www.buildingsmart-tech.org/ifc/IFC4/Add1/html/)
* [Statsbygg BIM Manual](http://www.statsbygg.no/Files/publikasjoner/manualer/StatsbyggBIM-manual-ver1-2-1eng-2013-12-17.pdf)
* [COBIM 2012](http://www.en.buildingsmart.kotisivukone.com/3)
* [AEC (UK) BIM Protocol v2.0](https://aecuk.wordpress.com/documents/)
* [Allplan BIM Compendium Theory and Practice](https://www.allplan.com/fileadmin/user_upload/_corp/Home/Aktionsseiten/BIM_Leitfaden/EN/Allplan_BIM_Compendium.pdf)
* [IFC Reference Guide for ARCHICAD](http://www.graphisoft.com/downloads/addons/ifc/index.html)
* [Echange de maquette IFC entre CYPECAD MEP et Allplan](https://cypecommunity.zendesk.com/hc/fr/articles/204525969-Echange-de-maquette-IFC-entre-CYPECAD-MEP-et-Allplan)
* [Protocole de modélisation et d'exportation d'une maquette IFC depuis ArchiCAD vers CYPECAD MEP](https://cypecommunity.zendesk.com/hc/fr/articles/204281509-Protocole-de-modélisation-et-d-exportation-d-une-maquette-IFC-depuis-ArchiCAD-vers-CYPECAD-MEP)
* [Protocole de modélisation et d'exportation d'une maquette IFC depuis REVIT vers CYPECAD MEP](https://cypecommunity.zendesk.com/hc/fr/articles/201766699-Protocole-d-exportation-d-une-maquette-IFC-depuis-REVIT-et-importation-dans-CYPECAD-MEP-)
* [BIMFORUM LOD](http://bimforum.org/lod/)
* [Cahier Pratique - BIM / Maquette Numérique](http://www.syntec-ingenierie.fr/actualites/2014/08/29/bimmaquette-numerique-contenu-et-niveaux-de-developpement/)
