---
layout: default
title: Outils
---

<div class="table-responsive">
  <table class="table table-sm table-hover">
    <thead>
      <tr>
        <th></th>
        <th>Nom</th>
        <th>Editeur</th>
        <th>Standards supportés</th>
      </tr>
    </thead>
    <tbody>
      {% for outil in site.data.outils %}
      <tr>
        <td>
          {% if outil.logo != nil %}
          <img src="assets/img/outils/{{ outil.logo }}" class="img-responsive" style="height:25px;">
          {% endif %}
        </td>
        <td><a href="{{ outil.url }}" target="_blank">{{ outil.name }}</a></td>
        <td>{{ outil.editor }}</td>
        <td>
          {% for standard in outil.standards %}
          <span class="label label-default">{{ standard }}</span>
          {% endfor %}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

Une liste complète des logiciels compatibles en import et/ou export IFC est publiée par l'[Implementation Support Group de buildingSMART](http://www.buildingsmart-tech.org/implementation/implementations/allplominoform.application).

Les logiciels officiellement certifiés IFC sont listés par [buildingSMART](http://www.buildingsmart.org/compliance/certified-software/)