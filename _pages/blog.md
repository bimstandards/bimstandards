---
layout: blog
group: blog
title: Blog
comments: false
permalink: /blog/
---

<ul class="posts">
  {% for post in site.posts %}
    <li class="post">
      <h2 class="post-name"><a href="{{ post.url }}">{{ post.title }}</a></h2>
      <p class="post-date-author"><i class="fa fa-calendar" aria-hidden="true"></i> {{ post.date | date: "%d/%m/%Y" }} par <i class="fa fa-user" aria-hidden="true"></i> {{ post.author }}</p>
      {{ post.content }}
    </li>
  {% endfor %}
</ul>
