---
layout: default-topbar
group: fiches-echanges
title: Fiches d'échanges
description: Méthodes d'échanges point à point entre logiciels BIM
comments: false
icon: file-text-o
ordre: 1
status: publish
permalink: /echanger-en-bim/fiches-echanges/
redirect_from:
  - /fiches-echanges/
  - /revit/export-fichier-ifc/
  - /archicad/export-fichier-ifc/
  - /revit/import-fichier-ifc-archicad-reference/
---

# Fiches méthodologiques d'échanges BIM entre logiciels

Les fiches proposées ci-dessous sont des fiches présentant la méthodologie pressentie pour assurer un échange de maquette numérique d'un logiciel vers un autre, du point de vue des utilisateurs, ainsi que les fonctionnalités de ces logiciels. 

<div class="row">
  <div class="col-12">
    <p class="text-right"><a class="btn btn-sm btn-secondary" href="/echanger-en-bim/fiches-echanges/nouvelle/" role="button"><i class="fa fa-plus" aria-hidden="true"></i> Ajouter une fiche (éditeurs)</a></p>
  </div>
</div>

<div class="row">
  <div class="col-12">
    <div class="table-responsive">
      <table id="tablefiches" class="table table-sm">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th></th>
            <th></th>
            <th>Source</th>
            <th>(version)</th>
            <th></th>
            <th></th>
            <th>Destination</th>
            <th>(version)</th>
            <th>Usage-Métier</th>
            <!-- <th>Mise à jour</th> -->
          </tr>
        </thead>
        <tbody>
          {% assign fiches_sorted = site.fiches | sort: 'destination_nom' %}
          {% for fiche in fiches_sorted %}
            {% assign timeframe = 7776000 %}
            {% assign fiche_creation = fiche.date_creation | date: "%s" | plus: 0 %}
            {% assign fiche_maj = fiche.date_maj | date: "%s" | plus: 0 %}
            {% assign fiche_recente = "now" | date: "%s" | minus: timeframe  %}
            <tr>
              <td>
                {% if fiche_creation > fiche_recente %}
                <span class="badge badge-pill badge-warning">nouveau</span>
                {% elsif fiche_maj > fiche_recente %}
                <span class="badge badge-pill badge-warning">mise à jour</span>
                {% endif %}
              </td>
              <td><a class="btn btn-primary btn-sm" href="{{ fiche.url }}" role="button"><i class="fa fa-file-text-o" aria-hidden="true"></i> voir la fiche</a></td>              
              <td>
                {% for cv in site.cv-openbim %}
                  {% if cv.logiciel == fiche.source_nom %}
                    <a href="{{ cv.url }}" class="badge badge-secondary">CV</a>
                  {% endif %}
                {% endfor %}
              </td>
              <td><strong>{{ fiche.source_nom }}</strong></td>
              <td>{{ fiche.source_version }}</td>
              <td><i class="fa fa-arrow-right" aria-hidden="true"></i></td>
              <td>
                {% for cv in site.cv-openbim %}
                  {% if cv.logiciel == fiche.destination_nom %}
                    <a href="{{ cv.url }}" class="badge badge-secondary">CV</a>
                  {% endif %}
                {% endfor %}
              </td>
              <td><strong>{{ fiche.destination_nom }}</strong></td>
              <td>{{ fiche.destination_version }}</td>
              <td>{{ fiche.usage_metier }}</td>
              <!-- <td><i class="fa fa-clock-o" aria-hidden="true"></i> {{ fiche.maj }}</td> -->
            </tr>
          {% endfor %}
        </tbody>
      </table>
    </div>
  </div>
</div>
