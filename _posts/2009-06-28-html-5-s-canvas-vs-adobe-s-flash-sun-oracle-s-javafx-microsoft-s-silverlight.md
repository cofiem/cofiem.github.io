---
layout: post
title: HTML 5's canvas vs Adobe's Flash, Sun/Oracle's JavaFX, Microsoft's Silverlight
tags:
- browsers
- flash
- silverlight
- java
- html5
- microsoft
- web dev
- web
---
<p><a href="http://www.infoworld.com/print/79291">This article</a> on Infoworld pits these proprietary Rich Interface Apps against the HTML5 canvas element.  HTML 5 might "eat these vendors' lunches", "invade their turf" and "threaten" to render them irrelevant. While there are conflicts of interest, I see a huge opportunity here.</p>

<p>The HTML 5 spec will not be implemented in its entirety, if it ever is, for many years. In that time, we need ways to create interfaces that offer more power and flexibility than JavaScript currently offers. These should be workable across any browser, especially as the browser market expands.</p>

<p>My idea? The canvas element is just a tag, with a specification for the functionality it provides. How it is implemented is up to each browser. Why does this have to be an either/or situation? How about some competition? Why can't Microsoft's Silverlight be their &lt;canvas&gt;? As long as it provides the <a href="http://www.w3.org/TR/html5/the-canvas-element.html#the-canvas-element">W3C canvas API</a>, in addition to Microsoft's own functionality, I see no issues. JavaFX and Flash could similarly implement the canvas functionality, and offer an alternative to a browser's built-in canvas. Or in the case of IE, Silverlight could be <i>the</i> canvas implementation.</p>

<p>In this way, the whole issue of HTML5 vs the proprietry RIAs goes away, replaced by something resembling the browser market currently. A user could choose which technology powered their canvas - for example, in Firefox on Windows, the options could be:
<ul><li>Native - the default, probably powered by a free, open source, external solution</li>
<li>Adobe Flash - Widespread and well-known</li>
<li>Microsoft's Silverlight</li>
<li>JavaFx</li>
</ul>
</p>
