---
layout: ifc
title: Architecture
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
        <th>Elément architectural</th>
        <th>IfcProduct + PredefinedType</th>
        <th>IfcTypeProduct + PredefinedType</th>
      </tr>
    </thead>
    <tbody class="list">
      {% for object in site.data.ifc-objets-architecture %}
      <tr>
        <td class="name_fr"><b>{{ object.name_fr }}</b></td>
        <td class="ifcproduct">{{ object.ifcproduct }}</td>
        <td class="ifctypeproduct">{{ object.ifctypeproduct }}</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

**Sources**
* Documentation IFC2x3