---
author : ['Author Name']
title: "Configure Menu"
description: "How to configure the menu in Hugo Brewm theme"
date: 2025-01-26
lastmod: 2025-02-04
type: post
draft: false
translationKey: menus
coffee: 1
tags: ['configuration', 'menu']
categories: ['configuration']
---

Learn how to configure menus in the Hugo Brewm theme using either `config.toml` or `menus[.lang].toml` files.

## Menu Parameters

- `identifier`: Unique identifier for each menu item
- `name`: Text shown in the menu
- `url`: External link destination
- `pageRef`: Link to internal pages
- `weight`: Menu item ordering (smaller numbers first)
- `pre`: Icon placement
- `post`: Description for the link
- `parent`: Parent menu item reference

## Adding Icons

Add icons to your menu items with the `pre` parameter.

```toml
[[menu.main]]
    identifier = "github"
    name = "GitHub"
    url = "https://github.com/"
    pre = "github"
```

Here are all the supported list icons and their corresponding names that can be used when configuring your menu items:

<ul class="column pin" role="presentation">
  <li><i class="icon email"></i> email  </li>
  <li><i class="icon rss"></i> rss  </li>
  <li><i class="icon behance"></i> behance  </li>
  <li><i class="icon bigcartel"></i> bigcartel  </li>
  <li><i class="icon bitbucket"></i> bitbucket  </li>
  <li><i class="icon blogger"></i> blogger  </li>
  <li><i class="icon bluesky"></i> bluesky  </li>
  <li><i class="icon bukalapak"></i> bukalapak  </li>
  <li><i class="icon buymeacoffee"></i> buymeacoffee  </li>
  <li><i class="icon clubhouse"></i> clubhouse  </li>
  <li><i class="icon codepen"></i> codepen  </li>
  <li><i class="icon creativefabrica"></i> creativefabrica  </li>
  <li><i class="icon dailymotion"></i> dailymotion  </li>
  <li><i class="icon dev"></i> dev  </li>
  <li><i class="icon deviantart"></i> deviantart  </li>
  <li><i class="icon digg"></i> digg  </li>
  <li><i class="icon dribbble"></i> dribbble  </li>
  <li><i class="icon ebay"></i> ebay  </li>
  <li><i class="icon etsy"></i> etsy  </li>
  <li><i class="icon facebook"></i> facebook  </li>
  <li><i class="icon figma"></i> figma  </li>
  <li><i class="icon flickr"></i> flickr  </li>
  <li><i class="icon flipkart"></i> flipkart  </li>
  <li><i class="icon github"></i> github  </li>
  <li><i class="icon githubsponsors"></i> githubsponsors  </li>
  <li><i class="icon gitlab"></i> gitlab  </li>
  <li><i class="icon gnusocial"></i> gnusocial  </li>
  <li><i class="icon goodreads"></i> goodreads  </li>
  <li><i class="icon googlescholar"></i> googlescholar  </li>
  <li><i class="icon gumroad"></i> gumroad  </li>
  <li><i class="icon hackernews"></i> hackernews  </li>
  <li><i class="icon hashnode"></i> hashnode  </li>
  <li><i class="icon icon--500px"></i> icon–500px  </li>
  <li><i class="icon instagram"></i> instagram  </li>
  <li><i class="icon jsfiddle"></i> jsfiddle  </li>
  <li><i class="icon karyakarsa"></i> karyakarsa  </li>
  <li><i class="icon keybase"></i> keybase  </li>
  <li><i class="icon keycdn"></i> keycdn  </li>
  <li><i class="icon kickstarter"></i> kickstarter  </li>
  <li><i class="icon kofi"></i> kofi  </li>
  <li><i class="icon lazada"></i> lazada  </li>
  <li><i class="icon liberapay"></i> liberapay  </li>
  <li><i class="icon linkedin"></i> linkedin  </li>
  <li><i class="icon mastodon"></i> mastodon  </li>
  <li><i class="icon medium"></i> medium  </li>
  <li><i class="icon olx"></i> olx  </li>
  <li><i class="icon opencollective"></i> opencollective  </li>
  <li><i class="icon openid"></i> openid  </li>
  <li><i class="icon orcid"></i> orcid  </li>
  <li><i class="icon patreon"></i> patreon  </li>
  <li><i class="icon paypal"></i> paypal  </li>
  <li><i class="icon peertube"></i> peertube  </li>
  <li><i class="icon pinterest"></i> pinterest  </li>
  <li><i class="icon pleroma"></i> pleroma  </li>
  <li><i class="icon publons"></i> publons  </li>
  <li><i class="icon quora"></i> quora  </li>
  <li><i class="icon reddit"></i> reddit  </li>
  <li><i class="icon researchgate"></i> researchgate  </li>
  <li><i class="icon saweria"></i> saweria  </li>
  <li><i class="icon sellfy"></i> sellfy  </li>
  <li><i class="icon shopee"></i> shopee  </li>
  <li><i class="icon shopify"></i> shopify  </li>
  <li><i class="icon signal"></i> signal  </li>
  <li><i class="icon snapchat"></i> snapchat  </li>
  <li><i class="icon soundcloud"></i> soundcloud  </li>
  <li><i class="icon stackexchange"></i> stackexchange  </li>
  <li><i class="icon stackoverflow"></i> stackoverflow  </li>
  <li><i class="icon stripe"></i> stripe  </li>
  <li><i class="icon substack"></i> substack  </li>
  <li><i class="icon telegram"></i> telegram  </li>
  <li><i class="icon threads"></i> threads  </li>
  <li><i class="icon tiktok"></i> tiktok  </li>
  <li><i class="icon tokopedia"></i> tokopedia  </li>
  <li><i class="icon tumblr"></i> tumblr  </li>
  <li><i class="icon twitch"></i> twitch  </li>
  <li><i class="icon twitter"></i> twitter  </li>
  <li><i class="icon vimeo"></i> vimeo  </li>
  <li><i class="icon vine"></i> vine  </li>
  <li><i class="icon vk"></i> vk  </li>
  <li><i class="icon wattpad"></i> wattpad  </li>
  <li><i class="icon weibo"></i> weibo  </li>
  <li><i class="icon whatsapp"></i> whatsapp  </li>
  <li><i class="icon wikipedia"></i> wikipedia  </li>
  <li><i class="icon wordpress"></i> wordpress  </li>
  <li><i class="icon write-dot-as"></i> write-dot-as  </li>
  <li><i class="icon x"></i> x  </li>
  <li><i class="icon xing"></i> xing  </li>
  <li><i class="icon xmpp"></i> xmpp  </li>
  <li><i class="icon youtube"></i> youtube  </li>
</ul>

## Creating Nested Menus

Create dropdown menus by using the `parent` parameter:

```toml
[[menu.main]]
    identifier = "about"
    name = "About"
    pageRef = "/about"

    [[menu.main]]
        identifier = "about-author"
        name = "Author"
        pageRef = "/about/author"
        parent = "about"
```

## Language Support

There are three ways to add multi-language support to your menus:

### 1. Using `menu.[lang].[menuID]`

In `config.toml`:

```toml
[[menu.en.main]]
    identifier = "about"
    name = "About"
    url = "/about/"

    [[menu.en.main]]
        identifier = "about-author"
        name = "Author"
        pageRef = "/about/author"
        parent = "about"

[[menu.id.main]]
    identifier = "about"
    name = "Tentang"
    url = "/tentang/"

    [[menu.id.main]]
        identifier = "about-author"
        name = "Tentang Penyusun"
        pageRef = "/tentang/penyusun"
        parent = "about"
```

### 2. Using Separate Menu Files

In `menus.en.toml`:

```toml
[[main]]
    identifier = "about"
    name = "About"
    url = "/about/"

    [[main]]
        identifier = "about-author"
        name = "Author"
        pageRef = "/about/author"
        parent = "about"
```

In `menus.id.toml`:

```toml
[[main]]
    identifier = "about"
    name = "Tentang"
    url = "/tentang/"

    [[menu.id.main]]
        identifier = "about-author"
        name = "Tentang Penyusun"
        pageRef = "/tentang/penyusun"
        parent = "about"
```

### 3. Using Front Matter in Markdown Files

in `index[.lang].md` `_index[.lang].md` or `filename[.lang].md`

```toml
---
title: "About Author"
menus: 
  main:
    indetifier: about-author
    parent: about
---
```