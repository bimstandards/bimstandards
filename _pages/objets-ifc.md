---
layout: default
title: Objets IFC
permalink: /objets-ifc/
---

# Introduction

Le format IFC est un langage dont le vocabulaire principal est formé par les classes `IfcProduct `, destinées à qualifier les objets physiques d'une maquette. Si les logiciels-métiers classent généralement de manière automatique les objets de base, il existe des variations d'une même classe, à travers le `PredefinedType`, permettant d'affiner la qualification.

Par exemple, la classe `IfcSlab` utilisée pour une dalle, peut aussi qualifier un radier avec le type `IfcSlab BASESLAB`, un palier d'escalier avec le type `IfcSlab LANDING`, ou une dalle de toiture-terrasse avec le type `IfcSlab ROOF`.

Cette même déclinaison est aussi présente dans les `IfcTypeProduct` qui regroupent les propriétés de plusieurs objets d'un même type. Par exemple, 5 poteaux identiques possédant la classe `IfcColumn` seront regroupés dans un type `IfcColumnType`.

Les `PredefinedType` peuvent être attribués au niveau `IfcProduct` ou `IfcTypeProduct` comme on peut le voir dans les tableaux ci-dessous, mais ils ne sont pas forcément cohérents entre les deux niveaux. l'IFC4 devrait corriger en grande partie ces incohérences.

Cette page est donc destinée à faire connaître la richesse de cette classification IFC, en traduisant tout d'abord les classes et leurs types en français, ainsi qu'en donnant les outils les plus appropriés à utiliser dans les principaux logiciels de modélisation (Allplan, Archicad et Revit).

# Domaine Architectural (IFC2x3-TC1)

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
        <th>Outil Allplan</th>
        <th>Outil Archicad</th>
        <th>Outil Revit</th>
      </tr>
    </thead>
    <tbody class="list">
      {% for object in site.data.ifc-objets %}
        {% if object.domaine_architecture == 'YES' %}
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
              <a href="https://www.google.fr/search?q={{ object.ifcproduct | downcase }}" target="_blank"><i class="fa fa-search" data-proofer-ignore></i></a>
            {% endif %}
            {{ object.ifcproduct }}
          </td>
          <td class="ifctypeproduct">
            {% if object.ifctypeproduct != null %}
              <a href="https://www.google.fr/search?q={{ object.ifctypeproduct | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
            {% endif %}
            {{ object.ifctypeproduct }}
          </td>
          <td class="outil_allplan">{{ object.allplan }}</td>
          <td class="outil_archicad">{{ object.archicad }}</td>
          <td class="outil_revit">{{ object.revit }}</td>
        </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

# Domaine Structurel (IFC2x3-TC1)

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
        <th>Outil Allplan</th>
        <th>Outil Archicad</th>
        <th>Outil Revit</th>
      </tr>
    </thead>
    <tbody class="list">
      {% for object in site.data.ifc-objets %}
        {% if object.domaine_structure == 'YES' %}
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
          <td class="outil_allplan">{{ object.allplan }}</td>
          <td class="outil_archicad">{{ object.archicad }}</td>
          <td class="outil_revit">{{ object.revit }}</td>
        </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

# Domaine Fluides (IFC2x3-TC1)

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
        <th>Outil Allplan</th>
        <th>Outil Archicad</th>
        <th>Outil Revit</th>
      </tr>
    </thead>
    <tbody class="list">
      {% for object in site.data.ifc-objets %}
        {% if object.domaine_fluides == 'YES' %}
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
          <td class="outil_allplan">{{ object.allplan }}</td>
          <td class="outil_archicad">{{ object.archicad }}</td>
          <td class="outil_revit">{{ object.revit }}</td>
        </tr>
        {% endif %}
      {% endfor %}
    </tbody>
  </table>
</div>

# Sources

* [Documentation IFC2x3-TC1](http://www.buildingsmart-tech.org/ifc/IFC2x3/TC1/html/index.htm)
* [IFC 2×3 element and type classification – The plain language A-Z list](http://bimblog.bondbryan.com/ifc-2x3-element-and-type-classification-the-plain-language-a-z-list/)
