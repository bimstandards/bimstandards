---
layout: default
group: travailler-avec-les-ifc
lang: français
ref: objets-ifc
title: Objets IFC
description: Décryptage des classes d'objets IFC
comments: true
icon: cube
ordre: 4
status: publish
redirect_from:
  - /standards/objets-ifc/
---

# Objets IFC

## Introduction

Le format IFC est un langage dont le vocabulaire principal est formé par les classes `IfcProduct`, destinées à qualifier les objets physiques d'une maquette. Si les logiciels-métiers classent généralement de manière automatique les objets de base, il existe des variations d'une même classe, à travers le `PredefinedType`, permettant d'affiner la qualification.

Par exemple, la classe `IfcSlab` utilisée pour une dalle, peut aussi qualifier un radier avec le type `IfcSlab BASESLAB`, un palier d'escalier avec le type `IfcSlab LANDING`, ou une dalle de toiture-terrasse avec le type `IfcSlab ROOF`.

Cette même déclinaison est aussi présente dans les `IfcTypeProduct` qui regroupent les propriétés de plusieurs objets d'un même type. Par exemple, 5 poteaux identiques possédant la classe `IfcColumn` seront regroupés dans un type `IfcColumnType`.

Les `PredefinedType` peuvent être attribués au niveau `IfcProduct` ou `IfcTypeProduct` comme on peut le voir dans les tableaux ci-dessous, mais ils ne sont pas forcément cohérents entre les deux niveaux. l'IFC4 devrait corriger en grande partie ces incohérences.

Cette page est donc destinée à faire connaître la richesse de cette classification IFC, en traduisant tout d'abord les classes et leurs types en français, ainsi qu'en donnant les outils les plus appropriés à utiliser dans les principaux logiciels BIM de modélisation architecturale (Allplan, ARCHICAD et Revit).

## Listes par spécialités

Suivre [ce lien](https://github.com/bimstandards/bimstandards/edit/gh-pages/_data/ifc-objets.yml) pour contribuer à la liste.

<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#domaine_architectural" role="tab" aria-controls="domaine_architectural" rel="nofollow">Architecture (IFC2x3-TC1)</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#domaine_structurel" role="tab" aria-controls="domaine_structurel" rel="nofollow">Structure (IFC2x3-TC1)</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#domaine_fluides" role="tab" aria-controls="domaine_fluides" rel="nofollow">Fluides (IFC2x3-TC1)</a>
  </li>
</ul>

<div class="tab-content">
  <div class="tab-pane active" id="domaine_architectural" role="tabpanel">
    <div id="table-domaine-architectural">
      <table class="table table-responsive table-sm table-hover">
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
            <th>Outil ARCHICAD</th>
            <th>Outil Revit</th>
          </tr>
        </thead>
        <tbody class="list">
          {% for object in site.data.ifc-objets %}
            {% if object.domaine_architecture == true %}
            <tr>
              <td class="fr_fr"><b>{{ object.nom_fr_fr }}</b></td>
              <td class="en_gb">
                {% if object.nom_en_gb != null %}
                  <a href="https://www.google.fr/search?q={{ object.nom_en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                  <a href="https://translate.google.com/#en/fr/{{ object.nom_en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-globe"></i></a>
                {% endif %}
                {{ object.nom_en_gb }}
              </td>
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
  <div class="tab-pane" id="domaine_structurel" role="tabpanel">
    <div id="table-domaine-structurel">
      <table class="table table-responsive table-sm table-hover">
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
            <th>Outil ARCHICAD</th>
            <th>Outil Revit</th>
          </tr>
        </thead>
        <tbody class="list">
          {% for object in site.data.ifc-objets %}
            {% if object.domaine_structure == true %}
            <tr>
              <td class="fr_fr"><b>{{ object.nom_fr_fr }}</b></td>
              <td class="en_gb">
                {% if object.nom_en_gb != null %}
                  <a href="https://www.google.fr/search?q={{ object.nom_en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                  <a href="https://translate.google.com/#en/fr/{{ object.nom_en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-globe"></i></a>
                {% endif %}
                {{ object.nom_en_gb }}
              </td>
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
  <div class="tab-pane" id="domaine_fluides" role="tabpanel">
    <div id="table-domaine-fluides">
      <table class="table table-responsive table-sm table-hover">
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
            <th>Outil ARCHICAD</th>
            <th>Outil Revit</th>
          </tr>
        </thead>
        <tbody class="list">
          {% for object in site.data.ifc-objets %}
            {% if object.domaine_fluides == true %}
            <tr>
              <td class="fr_fr"><b>{{ object.nom_fr_fr }}</b></td>
              <td class="en_gb">
                {% if object.nom_en_gb != null %}
                  <a href="https://www.google.fr/search?q={{ object.nom_en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-search"></i></a>
                  <a href="https://translate.google.com/#en/fr/{{ object.nom_en_gb | downcase }}" target="_blank" data-proofer-ignore><i class="fa fa-globe"></i></a>
                {% endif %}
                {{ object.nom_en_gb }}
              </td>
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

* **IFC2x Edition 3 - Technical Corrigendum 1** [Documentation en ligne]. buildingSMART IAI. Disponible sur : [http://www.buildingsmart-tech.org/ifc/IFC2x3/TC1/html/index.htm](http://www.buildingsmart-tech.org/ifc/IFC2x3/TC1/html/index.htm)
* **IFC 2×3 element and type classification – The plain language A-Z list** [Article en ligne]. BIM Blog, Bond Bryan Digital. Disponible sur : [http://bimblog.bondbryan.com/ifc-2x3-element-and-type-classification-the-plain-language-a-z-list/](http://bimblog.bondbryan.com/ifc-2x3-element-and-type-classification-the-plain-language-a-z-list/)
* **COBie Responsibility Matrix** [XLS]. Bill East, NIBS. Disponible sur : [http://projects.buildingsmartalliance.org/files/?artifact_id=4093](http://projects.buildingsmartalliance.org/files/?artifact_id=4093)
