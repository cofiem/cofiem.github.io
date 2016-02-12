---
layout: post
title: CSS vendor prefixes
tags:
- css
- html5
- html
- browser
- w3c
- a list apart
- quirksmode
- standards
- vendor prefixes
---
<p>I'm reading through this <a href="http://www.alistapart.com/articles/prefix-or-posthack/">A List Apart article</a> on CSS vendor prefixes. I'm not a fan, for a number of reasons &ndash; instead of just knowing the W3C CSS words, you have to go looking on multiple sites to see if multiple browsers have multiple ways of declaring the same thing. Not to mention that browsers show errors when parsing css declarations they don't understand. As well as making stylesheets that bit harder to maintain.</p>

<p>Then there's this paragraph in the article:</p>
<blockquote>
In the past, we had to invent a bunch of parser exploits just to get inconsistent implementations to act the same once we found out they were inconsistent. It was a wholly reactive approach. Prefixes are a proactive approach.
<br>
Furthermore, prefixes are a temporary hack. As time goes on and implementations become consistent, browsers will drop the prefixes. From then on, authors will be able to write one line for border-radius instead of six-plus lines of CSS. Without them, we’re just waiting for the next botched implementation that forces us to support it through hacks for years upon years.
</blockquote>

<p>This highlights my number one annoyance with CSS prefixes &ndash; I don't know of a single one that has been deprecated or removed. From what I've seen, all that happens is more get added. And while I love to see browser competition, with more browsers come more prefixes.</p>

<p>I'm not alone in this. <a href="http://www.quirksmode.org/blog/archives/2010/03/css_vendor_pref.html">PPK at Quirksmode</a> has similar feelings.</p>

<p>After reading a bit more about what other people have to say, and the A List Apart article, I can see that there are some uses for CSS vendor prefixes. The ability to differentiate between implementations in flux is especially nice (the example of <code>clip</code> is a good one). Although, I still don't think having <a href="http://reference.sitepoint.com/css/vendorspecific">eight</a> or <a href="http://www.w3.org/TR/CSS2/syndata.html#vendor-keywords">more</a> prefixes (and have to worry about the order we use prefixed and non-prefixed words) for any new CSS words is such a great idea.</p>

<p>All in all, with browser versions and support moving so fast, it seems like a bit of a restriction to quick, iterative development to use or require vendor prefixes. Isn't the whole point to be able to use a standard set of CSS? And with the current rate of development, any browser really trying to compete will have their implementation standardised quite quickly.</p>
<p>
