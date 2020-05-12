---
layout: post
title:  Fotoromanzo Parte 1
description: Raccontiamola
date:   2020-05-02 12:21:01 +0200
categories: famiglia
tag: memory
author: Cinzia
preview_img: /img/posts/cinzia/13-asilo.jpg
period: 1990-01
excerpt: Una sequenza di ricordi della mamma di questi primi trent'anni insieme. Parte 1
badge: racconto
pictures:
  - path: /img/posts/cinzia/2-il-concepimento.jpg
    alt: 2-il-concepimento.jpg
    caption: 14-01-89 Viaggio di nozze Isola St. Lucia (Caraibi)
  - path: /img/posts/cinzia/3-attesa.jpg
    alt: 3-attesa.jpg
    caption: Venezia all'ottavo mese d'attesa. Io e papà felici
  - path: /img/posts/cinzia/4-appena-nata.jpg
    alt: 4-appena-nata.jpg
    caption: Sei nata! peso kg. 2,920 e il giorno delle dimissioni kg. 2,720
  - path: /img/posts/cinzia/5-battesimo.jpg
    alt: 5-battesimo.jpg
    caption: Il tuo battesimo a Azzano S.Paolo
  - path: /img/posts/cinzia/6-battesimo-coi-cugini.jpg
    alt: 6-battesimo-coi-cugini.jpg
    caption: Foto con i parenti al tuo battesimo
  - path: /img/posts/cinzia/7.jpg
    alt: 7.jpg
    caption: Prime pappe
  - path: /img/posts/cinzia/8.jpg
    alt: 8.jpg
    caption: Prime passeggiate con mamma e papà
  - path: /img/posts/cinzia/9-abluzioni.jpg
    alt: 9-abluzioni.jpg
    caption: Primi bagnetti
  - path: /img/posts/cinzia/10-alassio.jpg
    alt: 10-alassio.jpg
    caption: Alassio a un anno
  - path: /img/posts/cinzia/12-alassio-anno-dopo.jpg
    alt: 12-alassio-anno-dopo.jpg
    caption: Alassio un anno dopo
  - path: /img/posts/cinzia/13-asilo.jpg
    alt: 13-asilo.jpg
    caption: Asilo Beata Capitanio a due anni
  - path: /img/posts/cinzia/14-asilo.jpg
    alt: 14-asilo.jpg
    caption: Asilo l'anno dopo
  - path: /img/posts/cinzia/15-alassio.jpg
    alt: 15-alassio.jpg
    caption: Alassio con tutta la famiglia
---

Parte 1 | [Parte 2](/famiglia/2020/05/02/fotoromanzo-2.html) | [Parte 3](/famiglia/2020/05/02/fotoromanzo-3.html)

<p>Tanti auguri per il tuo trentesimo compleanno!</p>
<br/>

<style type="text/css">
@media handheld, only screen and (max-device-width:640px) {
    .carousel-wrapper {
        height: 100vh;
        max-height: 900px;
    }
}
</style>

<div class="carousel-wrapper">
<section class="carousel" aria-label="Gallery" style="height: 100%;">
    <ol class="carousel__viewport">
        {% for pic in page.pictures %}
        {% if my_index == last_index %}
            {% assign next_index = 1 %}
        {% else %}
            {% assign next_index = my_index | plus:1 %}
        {% endif %}
        <li id="carousel__slide{{my_index}}" tabindex="0" class="carousel__slide">
            <div class="carousel__snapper" style="overflow: hidden;">
                <figure class="wp-caption" style="height: inherit; text-align:centered;background-color:#333;">
                    <img class="demo" src="{{ pic.path }}" alt="{{ pic.alt }}" style="border: none; object-fit: contain; max-width:100%; max-height:100%; vertical-align: middle; margin-left: auto; margin-right: auto;"/>
                    <figcaption class="wp-caption-text" style="line-height: 1em;">
                        {{next_index}}. {{ pic.caption }}
                    </figcaption>
                </figure>
    
                <a href="#carousel__slide{{previous_index}}" class="carousel__prev">Go to prev slide</a>
                <a href="#carousel__slide{{next_index}}" class="carousel__next">Go to next slide</a>
            </div>
        </li>
        {% assign previous_index = my_index %}
        {% assign my_index = next_index %}
        {% endfor %}
    </ol>
    <aside class="carousel__navigation">
        <ol class="carousel__navigation-list">
            {% assign idx = 1 %}
            {% for post in my_posts %}
                <li class="carousel__navigation-item">
                    <a href="#carousel__slide{{idx}}" class="carousel__navigation-button">Go to slide {{idx}}</a>
                </li>
            {% assign idx = idx | plus:1 %}
            {% endfor %}
        </ol>
    </aside>
</section>
</div>

<br/>

<a href="/blog"><span class="badge badge-blog">Blog</span></a>

Parte 1 | [Parte 2](/famiglia/2020/05/02/fotoromanzo-2.html) | [Parte 3](/famiglia/2020/05/02/fotoromanzo-3.html)
