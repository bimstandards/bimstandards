---
layout: ifc
title: Toutes
group: classifications
---

<div class="alert alert-warning" role="alert">
  <strong>Attention !</strong> Cette page est en cours d'élaboration...
</div>

<div id="table-searchable" class="table-responsive">
  
  <table class="table table-sm table-hover">
    <input class="search fuzzy-search form-control" placeholder="Rechercher dans la liste..." />
    <thead class="thead-default">
      <tr>
        <th>Terme français</th>
        <th>Terme anglais</th>
        <th>IfcProduct + PredefinedType</th>
        <th>IfcTypeProduct + PredefinedType</th>
      </tr>
    </thead>
    <tbody class="list">
      {% for object in site.data.ifc-objets %}
      <tr>
        <td class="fr_fr"><b>{{ object.fr_fr }}</b></td>
        <td class="en_gb"><b>{{ object.en_gb }}</b></td>
        <td class="ifcproduct">{{ object.ifcproduct }}</td>
        <td class="ifctypeproduct">{{ object.ifctypeproduct }}</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

**Sources**
* Documentation IFC2x3