---
layout: fiche
group: fiches-echanges
titre: Fiche d'échanges - Revit > ADCOF
source_nom: Revit
source_version: 2016 ou supérieure
source_editeur: Autodesk
destination_nom: ADCOF
destination_version: 9-2
destination_editeur: Progiscad
usage_metier: Structure
nom_pdf: revit-adcof.pdf
comments: true
statut: publiée
maj: 07/03/2017
---

## Prérequis

L'import d'un fichier IFC produit par le logiciel REVIT dans ADCOF s'effectue correctement à compter de la version 9-2 d'ADCOF. Ne pas oublier d'installer le plugin open source de revit.

## Export IFC depuis REVIT

Les options par défaut de REVIT en matière d'export IFC suffisent normalement pour que le fichier produit soit compris par ADCOF ; il convient toutefois de veiller à ce que REVIT soit paramétré pour découper les murs et poteaux par étage et que l'export soit effectué au format IFC 2x3 :

![capture]({{ site.url }}/assets/img/revit-adcof-01.jpg)

## Import IFC dans ADCOF

Au lancement de la commande d'importation IFC, ADCOF propose d'associer les parois lues dans le fichier IFC à une famille de murs ADCOF.

![capture]({{ site.url }}/assets/img/revit-adcof-02.jpg)

Une fois cette distribution réglée, la possibilité est donnée de modifier les dimensions des ouvertures lues dans le fichier IFC afin de tenir compte, dans le cas où le projet d'origine est un dossier Architecte, d'épaisseurs d'enduit éventuelles ou de la présence d'appuis de fenêtre préfabriqués.

![capture]({{ site.url }}/assets/img/revit-adcof-03.jpg)

## Autres ressources mises à disposition

En cours
