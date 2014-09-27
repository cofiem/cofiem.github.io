---
layout: post
title: ASP.Net Update Panel and Timer
tags:
- asp.net
- c#
- web dev
- microsoft
- documentation
- ajax
---
<p>UpdatePanels give basic AJAX functionality, but they do have some idiosyncrasies.</p>

<p>First, always <a href="http://codeclimber.net.nz/archive/2007/05/24/UpdateMode-default-value-for-the-UpdatePanel-is-Always.aspx">remember to set the UpdateMode to Conditional</a>, otherwise whenever the page is posted back for any reason, the update panel will postback as well.</p>

<p>If using a timer, it must be inside the ContentTemplate, and should be set as a trigger for the panel, to make it obvious. Don't want to have a bunch of mysterious postbacks to hunt down.</p>

<p>A final point: If you have more than one UpdatePanel, remember to do this for each one. One rogue Timer on a page can cause chaos through unexpected postbacks.</p>
