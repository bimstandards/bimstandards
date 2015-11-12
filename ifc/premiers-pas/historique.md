---
layout: ifc
title: Historique
group: premiers-pas
---

## Origine

International Alliance for Interoperability (IAI)

buildingSMART (2008)

## Versions IFC

<div class="table-responsive">
  <table class="table table-sm table-hover">
    <thead>
      <tr>
        <th>Version</th>
        <th>Date de publication</th>
        <th>Documentation</th>
      </tr>
    </thead>
    <tbody>
      {% for version in site.data.ifc-versions %}
      <tr {% if version.actuelle == "oui" %}class="table-success"{% endif %}>
        <td><b>{{ version.version }}</b></td>
        <td>{{ version.date }}</td>
        <td>
          {% if version.url_doc != nil %}
          <a href="{{ version.url_doc }}" target="_blank">Documentation</a>
          {% endif %}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>


**Sources**

* [Versions IFC sur le site buildingSMART](http://www.buildingsmart-tech.org/specifications/ifc-releases)
* [Histoire de buildingSMART](http://www.buildingsmart.org/about/about-buildingsmart/history/)
