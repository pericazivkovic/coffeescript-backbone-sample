---
layout: default
title: "Welcome To My Sweet Blog"
---
Wooooot !!

[download](download)

{% for site_page in page.site_pages %}
<a href="{{ site.uri }}{{ site_page }}">{{ site_page.title }}</a>
{% endfor %}

{% for post in site.posts %}
<a href="{{ site.uri }}{{ post.url }}">{{ post.title }}</a>
{% endfor %}