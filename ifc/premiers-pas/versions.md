---
layout: ifc
title: Versions
group: premiers-pas
---

Depuis la version IFC1.0 en 1997, buildingSMART développe et améliore continuellement ce standard majeur. L'IFC4-Add1, dernière version officielle, n'est pas encore pleinement prise en charge par les différents logiciels-métiers ; c'est donc l'IFC2x3-TC1 qui demeure le standard de fait actuellement. On peut espérer que les échanges IFC4 deviendront pleinement opérationnels durant l'année 2016.

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
