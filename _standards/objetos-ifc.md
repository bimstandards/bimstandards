---
layout: default
group: standards
lang: español/català
ref: objets-ifc
title: Objetos IFC
description: Descifrando las clases de objetos IFC
comments: true
ordre: 3
status: publish
---

# Objetos IFC

{% assign langs = site.standards | where: 'ref','objets-ifc' %}
Esta página está disponible en los siguientes idiomas : {% for page in langs %}<a class="btn btn-secondary btn-sm" href="{{ page.url }}" role="button"><i class="fa fa-globe" aria-hidden="true"></i> {{ page.lang }}</a> {% endfor %}

## Introducción

Traducción de clases IFC en español y catalán fue realizado con la ayuda de [GUBIMCAT -
Grup D'usaris BIM de Catalunya](http://gubimcat.blogspot.com.es).

## Listas por especialidades

<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#domaine_architectural" role="tab" aria-controls="domaine_architectural" rel="nofollow">Arquitectura (IFC2x3-TC1)</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#domaine_structurel" role="tab" aria-controls="domaine_structurel" rel="nofollow">Estructura (IFC2x3-TC1)</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#domaine_fluides" role="tab" aria-controls="domaine_fluides" rel="nofollow">MEP (IFC2x3-TC1)</a>
  </li>
</ul>

<div class="tab-content">
  <div class="tab-pane active" id="domaine_architectural" role="tabpanel">
    <div id="table-domaine-architectural" class="table-responsive">
      <table class="table table-sm table-hover">
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-search"></i></div>
            <input class="search fuzzy-search form-control" id="test" placeholder="Buscar en la lista..." />
          </div>
        </div>
        <thead>
          <tr>
            <th>Expresión español</th>
            <th>Expresión catalán</th>
            <th>IfcProduct + PredefinedType</th>
            <th>IfcTypeProduct + PredefinedType</th>
          </tr>
        </thead>
        <tbody class="list">
          {% for object in site.data.ifc-objets %}
            {% if object.domaine_architecture == true %}
            <tr>
              <td class="es_es"></td>
              <td class="cat_cat"></td>
              <td class="ifcproduct">
                {% if object.ifcproduct_ifc2x3tc1 != null %}
                  <a href="https://www.google.fr/search?q={{ object.ifcproduct_ifc2x3tc1 | downcase }}" target="_blank"><i class="fa fa-search" data-proofer-ignore></i></a>
                {% endif %}
                {{ object.ifcproduct_ifc2x3tc1 }}
              </td>
              <td class="ifctypeproduct">
                {% if object.ifctypeproduct_ifc2x3tc1 != null %}
                  <a href="https://www.google.fr/search?q={{ object.ifctypeproduct_ifc2x3tc1 | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                {% endif %}
                {{ object.ifctypeproduct_ifc2x3tc1 }}
              </td>
            </tr>
            {% endif %}
          {% endfor %}
        </tbody>
      </table>
    </div>
  </div>
  <div class="tab-pane" id="domaine_structurel" role="tabpanel">
    <div id="table-domaine-structurel" class="table-responsive">
      <table class="table table-sm table-hover">
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-search"></i></div>
            <input class="search fuzzy-search form-control" id="test" placeholder="Buscar en la lista..." />
          </div>
        </div>
        <thead>
          <tr>
            <th>Expresión español</th>
            <th>Expresión catalán</th>
            <th>IfcProduct + PredefinedType</th>
            <th>IfcTypeProduct + PredefinedType</th>
          </tr>
        </thead>
        <tbody class="list">
          {% for object in site.data.ifc-objets %}
            {% if object.domaine_structure == true %}
            <tr>
              <td class="es_es"></td>
              <td class="cat_cat"></td>
              <td class="ifcproduct">
                {% if object.ifcproduct_ifc2x3tc1 != null %}
                  <a href="https://www.google.fr/search?q={{ object.ifcproduct_ifc2x3tc1 | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                {% endif %}
                {{ object.ifcproduct_ifc2x3tc1 }}
              </td>
              <td class="ifctypeproduct">
                {% if object.ifctypeproduct_ifc2x3tc1 != null %}
                  <a href="https://www.google.fr/search?q={{ object.ifctypeproduct_ifc2x3tc1 | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                {% endif %}
                {{ object.ifctypeproduct_ifc2x3tc1 }}
              </td>
            </tr>
            {% endif %}
          {% endfor %}
        </tbody>
      </table>
    </div>
  </div>
  <div class="tab-pane" id="domaine_fluides" role="tabpanel">
    <div id="table-domaine-fluides" class="table-responsive">
      <table class="table table-sm table-hover">
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-search"></i></div>
            <input class="search fuzzy-search form-control" id="test" placeholder="Buscar en la lista..." />
          </div>
        </div>
        <thead>
          <tr>
            <th>Expresión español</th>
            <th>Expresión catalán</th>
            <th>IfcProduct + PredefinedType</th>
            <th>IfcTypeProduct + PredefinedType</th>
          </tr>
        </thead>
        <tbody class="list">
          {% for object in site.data.ifc-objets %}
            {% if object.domaine_fluides == true %}
            <tr>
              <td class="es_es"></td>
              <td class="cat_cat"></td>
              <td class="ifcproduct">
                {% if object.ifcproduct_ifc2x3tc1 != null %}
                  <a href="https://www.google.fr/search?q={{ object.ifcproduct_ifc2x3tc1 | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                {% endif %}
                {{ object.ifcproduct_ifc2x3tc1 }}
              </td>
              <td class="ifctypeproduct">
                {% if object.ifctypeproduct_ifc2x3tc1 != null %}
                  <a href="https://www.google.fr/search?q={{ object.ifctypeproduct_ifc2x3tc1 | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                {% endif %}
                {{ object.ifctypeproduct_ifc2x3tc1 }}
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
  </div>
</div>

## Sources

* **IFC2x Edition 3 - Technical Corrigendum 1**. Disponible sur : [http://www.buildingsmart-tech.org/ifc/IFC2x3/TC1/html/index.htm](http://www.buildingsmart-tech.org/ifc/IFC2x3/TC1/html/index.htm)
* **IFC 2×3 element and type classification – The plain language A-Z list** [Article en ligne]. BIM Blog, Bond Bryan Digital. Disponible sur : [http://bimblog.bondbryan.com/ifc-2x3-element-and-type-classification-the-plain-language-a-z-list/](http://bimblog.bondbryan.com/ifc-2x3-element-and-type-classification-the-plain-language-a-z-list/)
