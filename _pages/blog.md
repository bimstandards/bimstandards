---
layout: default
group: blog
title: Blog
comments: false
permalink: /blog/
---

<div class="row justify-content-md-center">
  <div class="col-sm-8">
    <ul class="posts">
      {% for post in site.posts %}
        <li class="post">
          <h2 class="post-name"><a href="{{ post.url }}">{{ post.title }}</a></h2>
          <p class="post-date"><i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date: "%d/%m/%Y" }}</p>
          <p class="post-content">{{ post.content }}</p>
        </li>
      {% endfor %}
    </ul>
  </div>
</div>
