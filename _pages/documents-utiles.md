---
layout: default
title: Documents utiles
comments: false
permalink: /documents-utiles/
---

# Documents utiles

<div class="row">
  {% for doc in site.data.documents-utiles %}
    <div class="col-sm-6 col-md-4 col-xl-3">
      <div class="card">
        <a target="_blank" href="{{ doc.url_doc }}"></a>
        <img class="card-img-top img-fluid" src="/assets/img/documents/{{ doc.couverture }}.jpg" alt="{{ doc.titre }}">
      </div>
    </div>
  {% endfor %}
</div>
