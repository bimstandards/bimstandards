---
layout: default
group: autocontrole
title: Autocontrôle
comments: false
permalink: /autocontrole/
---

# Autocontrôle

* Introduction

## Démarrer un projet openBIM

{% assign pages_sorted = site.autocontrole | sort: 'ordre' %}
{% for page in pages_sorted %}
{% if page.category == 1 %}
<div class="row justify-content-md-center">
  <div class="col-sm-8">
    <div class="card">
      <a href="{{ page.url }}"></a>
      <div class="card-body">
        <h4 class="card-title">
          <small class="text-muted"><i class="fa fa-{{ page.icon }}"></i></small>
          {{ page.title }}
        </h4>
        <h6 class="card-subtitle text-muted">{{ page.description }}</h6>
        {% if page.status == 'draft' %}
          <span class="badge badge-warning">bientôt disponible</span>
        {% endif %}
      </div>
    </div>
  </div>
</div>
{% endif %}
{% endfor %}

* Géolocalisation (obligatoire) - [Généralités]({{ site.url }}/bonnes-pratiques/regles-base/organisation-spatiale#géoréférencement) - [Archicad]({{ site.url }}/archicad/configurer-coordonnees-geographiques)
* Etages (obligatoire)

## Transmettre un modèle numérique à un tiers

{% assign pages_sorted = site.autocontrole | sort: 'ordre' %}
{% for page in pages_sorted %}
{% if page.category == 2 %}
<div class="row justify-content-md-center">
  <div class="col-sm-8">
    <div class="card">
      <a href="{{ page.url }}"></a>
      <div class="card-body">
        <h4 class="card-title">
          <small class="text-muted"><i class="fa fa-{{ page.icon }}"></i></small>
          {{ page.title }}
        </h4>
        <h6 class="card-subtitle text-muted">{{ page.description }}</h6>
        {% if page.status == 'draft' %}
          <span class="badge badge-warning">bientôt disponible</span>
        {% endif %}
      </div>
    </div>
  </div>
</div>
{% endif %}
{% endfor %}

* Attribution des classes d'objets (obligatoire)
* Attribution des types (obligatoire)
* Classification (facultatif)
* Matériaux (?)
* Géométrie : Intersections et dupliqués (obligatoire)
* Jeux de propriétés (?)
* Porteur/Non porteur (obligatoire)
* Intérieur/extérieur (obligatoire)
* Classement au feu (en fonction de l'usage)
* Réglages d'export IFC (obligatoire)

## Récupérer un modèle numérique d'un tiers

{% assign pages_sorted = site.autocontrole | sort: 'ordre' %}
{% for page in pages_sorted %}
{% if page.category == 3 %}
<div class="row justify-content-md-center">
  <div class="col-sm-8">
    <div class="card">
      <a href="{{ page.url }}"></a>
      <div class="card-body">
        <h4 class="card-title">
          <small class="text-muted"><i class="fa fa-{{ page.icon }}"></i></small>
          {{ page.title }}
        </h4>
        <h6 class="card-subtitle text-muted">{{ page.description }}</h6>
        {% if page.status == 'draft' %}
          <span class="badge badge-warning">bientôt disponible</span>
        {% endif %}
      </div>
    </div>
  </div>
</div>
{% endif %}
{% endfor %}

* Vérification dans un viewer (obligatoire)
* Compilation de plusieurs fichiers IFC
* Réglage d'import IFC dans un logiciel-métier
