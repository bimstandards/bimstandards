---
layout: default
group: fiches-echanges
title: Fiches d'échanges
comments: false
permalink: /fiches-echanges/
---

<div class="container container-index">
  
  <div class="row">
    <div class="col-12">
      <p class="text-right"><a class="btn btn-secondary" href="/nouvelle-fiche-echange/" role="button"><i class="fa fa-plus" aria-hidden="true"></i> Ajouter une fiche</a></p>
    </div>
  </div>
  
  <div class="row">
    <div class="col-12">
      <table id="tablefilter" class="table table-responsive-lg">
        <thead class="thead-light">
          <tr>
            <th></th>
            <th>Source</th>
            <th>(version)</th>
            <th></th>
            <th>Destination</th>
            <th>(version)</th>
            <th>Usage-Métier</th>
            <th>Mise à jour</th>
          </tr>
        </thead>
        <tbody>
          {% assign fiches_sorted = site.fiches | sort: 'destination_nom' %}
          {% for fiche in fiches_sorted %}
            <tr>
              <td><a class="btn btn-primary btn-sm" href="{{ fiche.url }}" role="button"><i class="fa fa-file-text-o" aria-hidden="true"></i> voir la fiche</a></td>              
              <td><strong>{{ fiche.source_nom }}</strong></td>
              <td>{{ fiche.source_version }}</td>
              <td><i class="fa fa-arrow-right" aria-hidden="true"></i></td>
              <td><strong>{{ fiche.destination_nom }}</strong></td>
              <td>{{ fiche.destination_version }}</td>
              <td>{{ fiche.usage_metier }}</td>
              <td><i class="fa fa-clock-o" aria-hidden="true"></i> {{ fiche.maj }}</td>
            </tr>
          {% endfor %}
        </tbody>
      </table>
      
    </div>
  </div>
    
</div>
