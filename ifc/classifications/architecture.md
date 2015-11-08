---
layout: ifc
title: Architecture
group: classifications
---

<div class="table-responsive">
  <table class="table table-sm table-hover">
    <thead>
      <tr>
        <th>Elément architectural</th>
        <th>IfcProduct + PredefinedType</th>
        <th>IfcTypeProduct + PredefinedType</th>
      </tr>
    </thead>
    <tbody>
      {% for object in site.data.ifc-objets-architecture %}
      <tr>
        <td><b>{{ object.name_fr }}</b></td>
        <td>{{ object.ifcproduct }}</td>
        <td>{{ object.ifctypeproduct }}</td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
