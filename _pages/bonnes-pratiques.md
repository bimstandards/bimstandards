---
layout: default
title: Bonnes pratiques
group: bonnes-pratiques
permalink: /bonnes-pratiques/
---

<div class="alert alert-danger" role="alert">
  <strong>Attention !</strong> Cette section est en cours d'élaboration. Certaines pages peuvent être incomplètes.
</div>

{% include callout-open.html param="warning" %}
**Préambule :**
Ce guide a été réalisé afin de renseigner sur les "bonnes pratiques" à adopter pour l'élaboration d'un projet BIM, en terme de modélisation et de renseigner de la maquette numérique ; il peut constituer une base de "**cahier des charges BIM**" orienté "convention de modélisation". Ce guide ne constitue en aucun cas une méthode unique, mais plutôt un recueil de bonnes pratiques.
{% include callout-close.html %}

# Règles de base

<div class="card-columns">
  {% for page in site.bonnes-pratiques %}
    {% if page.category == 'regles-base' %}
      <div class="card card-block">
        <h4 class="card-title">
          <small class="text-muted"><i class="fa fa-{{ page.icon }}"></i></small>
          {{ page.title }}
        </h4>
        <p class="card-text">{{ page.description }}</p>
        {% if page.status == 'draft' %}
          <a href="{{ page.url }}" class="btn btn-outline-primary btn-sm disabled">(bientôt disponible)</a> 
          <a href="{{ site.github.repository_url }}/edit/gh-pages/{{ page.path }}" class="btn btn-link btn-sm"><i class="fa fa-pencil"></i> Contribuer</a>
        {% else %}
          <a href="{{ page.url }}" class="btn btn-outline-primary btn-sm">En savoir plus</a>
        {% endif %}
      </div>
    {% endif %}
  {% endfor %}
</div>

# Scénarios d'usage

<div class="card-columns">
  {% for page in site.bonnes-pratiques %}
    {% if page.category == 'scenarios-usage' %}
      <div class="card card-block">
        <h4 class="card-title">
          <small class="text-muted"><i class="fa fa-{{ page.icon }}"></i></small>
          {{ page.title }}
        </h4>
        <p class="card-text">{{ page.description }}</p>
        {% if page.status == 'draft' %}
          <a href="{{ page.url }}" class="btn btn-outline-primary btn-sm disabled">(bientôt disponible)</a> 
          <a href="{{ site.github.repository_url }}/edit/gh-pages/{{ page.path }}" class="btn btn-link btn-sm"><i class="fa fa-pencil"></i> Contribuer</a>
        {% else %}
          <a href="{{ page.url }}" class="btn btn-outline-primary btn-sm">En savoir plus</a>
        {% endif %}
      </div>
    {% endif %}
  {% endfor %}
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
* [Blog Areo](http://blog.areo.io/)
