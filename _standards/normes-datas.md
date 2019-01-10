---
layout: default-sidebar
group: standards
lang: français
title: Normes Datas
description: Structuration de la donnée
comments: true
icon: book
ordre: 2
status: publish
---

# Normes Datas

## NF XP P07-150 devenue prEN ISO 23386

-	**Socle** : La norme, qui définit la manière de décrire des propriétés d'objets dans un dictionnaire, appuyée sur la série ISO 12006, a été développée en France. 
-	**Champ** : Méthodologie de description, d'écriture et de gestion des propriétés dans des dictionnaires interconnectés.
-	**Enjeux** : Il s'agit de créer un vocabulaire commun par un dictionnaire de propriétés ou de groupes de propriétés, qui enlève toute ambiguïté. Cela permet d'être totalement en accord entre une question " ce qui est attendu ", et la réponse " la solution opérationnelle ".
-	**Contexte** : Une 1re expérimentation française a été menée en 2016 pour tester la mise en oeuvre de cette norme, puis étendue en 2017-2018 (intitulée : POBIM).
-	**Bénéfices implémentation** : Accès facilité aux dictionnaires et référencement des produits ; disposer d'une structuration de l'information partagée par tous, de façon à ce que les modèles numériques soient cohérents.
-	**En pratique** : La norme "méthodologique" XP P07-150 aide à la création dictionnaires de propriétés produits et ouvrages, décrivant notamment " comment définir une propriété " mais aussi " comment la gérer une propriété, de sa création à son archivage", proposant ainsi un cadre organisationnel. Les propriétés des produits et équipements utilisés dans la construction représentent des données descriptives se référant aux exigences du projet ou à leur fabrication.  D'un côté, chaque fabricant réalise son e-catalogue en décrivant ses produits suivant sa liste de propriétés, d'autre part les éditeurs implémentent des propriétés dans leurs logiciels de conception ou de calcul...

![prEN ISO 23387]({{ site.url }}/assets/img/pren-iso-23387.jpg)

## ISO 12006-3 : les dictionnaires

-	**Socle** : " Construction immobilière - Organisation de l'information des travaux de construction - Partie 3 : schéma pour l'information basée sur l'objet - Bâtiments et ouvrages de génie civil - Organisation de l'information concernant les travaux de construction ".
- **Mise en œuvre** : Le bSDD représente à la fois le contenant - un outil de gestion et de consultation - et un contenu - une base de données de plusieurs " dictionnaires ". Il fait partie des actions de buildingSMART dans le cadre des "standard library".

-	Le bSDD, outil en ligne multilingue, fonctionne selon des données structurées et qualifiées avec pour capacité de mettre en relation l'ensemble des informations qu'il contient, Aucune de ses fonctionnalités n'est possible via un tableur type excel qui reste un tableau lignes-colonnes à plat. Il représente la première mise en œuvre de la norme ISO 12006-3, modèle de description de taxonomies basé sur les notions de concepts, regroupements de concepts et relations entre concepts.
-	Le bSDD intègre des dictionnaires nationaux, des classifications, des définitions COBie, des propriétés de type produits pour le marquage CE, et surtout des objets, composants et propriétés. Le bSDD est devenu le lieu de définition des propriétés IFC depuis la version IFC 4. Plusieurs pays sont en train de réfléchir comment intégrer leur classification dans bSDD (Corée, Chine…).

![ISO 12006-3]({{ site.url }}/assets/img/iso-12006-3.jpg)

## A lire aussi

- Les Travaux réalisés par bSFrance pour le PTNB sur [l'expérimentation PPBIM](http://www.mediaconstruct.fr/nos-actions/missions/articleid/1063/titre/experimentation-ppbim-2016)
- la présentation du GT [Product Room bSFrance](http://www.mediaconstruct.fr/nos-actions/groupes-de-travail/articleid/1053/titre/gt-groupe-miroir-du-projet-ppbim-pobim-poursuite-des-travaux-de-la-product-room-sur-objets-et-proprietes)
- la présentation du GT "[Echanges entre bibliothèques de contenus et logiciels métier BIM](http://www.mediaconstruct.fr/nos-actions/groupes-de-travail/articleid/1056/titre/gt-experimentation-des-formats-d-echanges-entre-catalogues-bibliotheques-et-logiciels)"
- la présentation du GT "[Qualité des données](http://www.mediaconstruct.fr/nos-actions/groupes-de-travail/articleid/1060/titre/gt-qualite-des-donnees-dans-le-bim-datas)"
