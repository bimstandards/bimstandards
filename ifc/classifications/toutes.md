---
layout: ifc
title: Toutes
group: classifications
---

<div id="table-searchable" class="table-responsive">
  <table class="table table-sm table-hover">
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input class="search fuzzy-search form-control" id="test" placeholder="Rechercher dans la liste..." />
      </div>
    </div>
    <thead>
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
        <td class="en_gb">
          {% if object.en_gb != null %}
            <a href="https://www.google.fr/search?q={{ object.en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
            <a href="https://translate.google.com/#en/fr/{{ object.en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-globe"></i></a>
          {% endif %}
          {{ object.en_gb }}
        </td>
        <td class="ifcproduct">
          {% if object.ifcproduct != null %}
            <a href="https://www.google.fr/search?q={{ object.ifcproduct | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
          {% endif %}
          {{ object.ifcproduct }}
        </td>
        <td class="ifctypeproduct">
          {% if object.ifctypeproduct != null %}
            <a href="https://www.google.fr/search?q={{ object.ifctypeproduct | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
          {% endif %}
          {{ object.ifctypeproduct }}
        </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>

## Sources

* [Documentation IFC2x3-TC1](http://www.buildingsmart-tech.org/ifc/IFC2x3/TC1/html/index.htm)
* [IFC 2×3 element and type classification – The plain language A-Z list](http://bimblog.bondbryan.com/ifc-2x3-element-and-type-classification-the-plain-language-a-z-list/)