---
layout: default
title: "Welcome To My Sweet Blog"
---
Wooooot !!

[download](download)

{% for site_page in page.site_pages %}
<a href="/coffeescript-backbone-sample/{{ site.uri }}{{ site_page }}">{{ site_page.title }}</a><br>
{% endfor %}

{% for post in site.posts %}
<a href="/coffeescript-backbone-sample/{{ site.uri }}{{ post.url }}">{{ post.title }}</a><br>
{% endfor %}