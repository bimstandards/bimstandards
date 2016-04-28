---
layout: default
title: Bonnes pratiques
group: bonnes-pratiques
---

<div class="alert alert-danger" role="alert">
  <strong>Attention !</strong> Cette section est en cours d'élaboration. Certaines pages peuvent être incomplètes.
</div>

{% include callout-open.html param="warning" %}
**Préambule :**
Ce guide a été réalisé afin de renseigner sur les "bonnes pratiques" à adopter pour l'élaboration d'un projet BIM, en terme de modélisation et de renseigner de la maquette numérique ; il peut constituer une base de "**cahier des charges BIM**" orienté "convention de modélisation". Ce guide ne constitue en aucun cas une réalité absolue, mais plutôt un recueil de bonnes pratiques.
{% include callout-close.html %}

# Règles de base

<div class="row">
  <div class="col-md-4">
    <div class="card card-block">
        <h4 class="card-title"><i class="fa fa-info-circle"></i> Principes généraux</h4>
        <p class="card-text">Informations de base sur la structuration d'un fichier IFC, la classification des objets, etc.</p>
        <a href="principes-generaux.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-cubes"></i> Organisation spatiale</h4>
      <p class="card-text">Méthode d'organisation hiérarchique des objets IFC (site, bâtiment, niveau, espace), géoréférencement.</p>
      <a href="organisation-spatiale.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-exchange"></i> Imports / Exports IFC</h4>
      <p class="card-text">Règles de base pour garantir la qualité des imports / export IFC.</p>
      <a href="imports-exports-ifc.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
</div>

# Scénarios d'usage

<div class="row">
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-building"></i> Maîtrise d'ouvrage</h4>
      <p class="card-text">Comment valider l'évolution d'un projet à partir d'un fichier IFC.</p>
      <a href="maitrise-douvrage.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-money"></i> Economie</h4>
      <p class="card-text">Structuration et quantification des ouvrages, scénarios d'échanges avec l'économiste.</p>
      <a href="economie.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-institution"></i> Structure</h4>
      <p class="card-text">Logiques de modélisation pour la conception structurelle, scénarios d'échanges entre architecte et ingénieur.</p>
      <a href="structure.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-bolt"></i> Thermique</h4>
      <p class="card-text">Logiques de modélisation pour l'analyse énergétique, échanges entre architecte et ingénieur.</p>
      <a href="thermique.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card card-block">
      <h4 class="card-title"><i class="fa fa-database"></i> Gestion de patrimoine</h4>
      <p class="card-text">Structuration des données pour l'exploitation-maintenance du bâtiment.</p>
      <a href="gestion-de-patrimoine.html" class="btn btn-primary-outline btn-sm">Ouvrir</a>
    </div>
  </div>
</div>

# Sources

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
