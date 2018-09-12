---
layout: default
group: cv-openbim
title: Fiches CV openBIM
description: Fonctionnalités d'échanges des logiciels BIM
comments: false
icon: file-text-o
ordre: 2
status: publish
permalink: /echanger-en-bim/cv-openbim/
---

# Fiches CV openBIM

...

<div class="row">
  <div class="col-12">
    <p class="text-right"><a class="btn btn-sm btn-secondary" href="/echanger-en-bim/fiches-echanges/nouvelle/" role="button"><i class="fa fa-plus" aria-hidden="true"></i> Ajouter une fiche (éditeurs)</a></p>
  </div>
</div>

<div class="row">
  <div class="col-12">
    <table id="tablecv" class="table table-responsive-lg">
      <thead class="thead-light">
        <tr>
          <th></th>
          <th>Logiciel</th>
          <th>(version)</th>
          <th>Editeur</th>
          <th>Usage-Métier</th>
          <th>Mise à jour</th>
        </tr>
      </thead>
      <tbody>
        {% assign fiches_sorted = site.cv-openbim | sort: 'logiciel' %}
        {% for fiche in fiches_sorted %}
          <tr>
            <td><a class="btn btn-primary btn-sm" href="{{ fiche.url }}" role="button"><i class="fa fa-file-text-o" aria-hidden="true"></i> voir le CV</a></td>              
            <td><strong>{{ fiche.logiciel }}</strong></td>
            <td>{{ fiche.version }}</td>
            <td>{{ fiche.editeur }}</td>
            <td>{{ fiche.usage_metier }}</td>
            <td><i class="fa fa-clock-o" aria-hidden="true"></i> {{ fiche.maj }}</td>
          </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
</div>
