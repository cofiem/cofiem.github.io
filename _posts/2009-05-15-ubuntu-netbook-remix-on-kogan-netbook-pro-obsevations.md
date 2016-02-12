---
layout: post
title: Ubuntu Netbook Remix on Kogan Netbook Pro - Obsevations
tags:
- ubuntu
- netbook
- linux
- windows
---
<p>Following on from the previous Kogan Netbook post, I've some more things to report. After using gOS for just under 2 weeks, I decided to change to Ubuntu Netbook Remix (UNR). And I'm glad I did, it is quite a bit easier to use, and just feels more suited to a netbook than gOS did. I'm really coming to enjoy the desktop menu - rather than the micro-movements needed to use a drop-down list, I can easily select a category, then a program. A very useful idea - use the desktop for the <a href="http://www.clutter-project.org/">Clutter</a> menu interface, rather than the clutter of document icons all over the place.</p>

<p><txp:image id="5" /></p>

<p>Although setting UNR up was relatively straight-forward (thanks in large part to <a href="http://agoranetbook.kayno.net/">kayno.net's blog</a>), there were some issues. At first the wireless card was not detected at all, but <a href="http://agoranetbook.kayno.net/2009/04/25/installing-the-vt6656-wireless-driver-on-the-kogan-agora/">all it needed was a driver</a>. The touchpad also didn't work at first, but that just required a <a href="http://agoranetbook.kayno.net/2009/04/25/oh-my-touchpad-doesnt-work/">change to the kernel boot options</a>.</p>

<p>Some observations of Ubuntu Netbook remix:
<dl>
<dt>Maximising Windows</dt>
<dd>Auto maximise is very good for most programs. Also very useful that the title bar is part of the info bar at the top.
Not all programs maximise to the whole screen. Many leave a small gap between the bottom of the program window and the bottom of the screen.
Maximising some windows/dialog boxes (eg. Preferences accessed by right clicking beside Ubuntu icon in top left) causes them to look very odd – too much space, buttons too large or in wrong spot.</dd>

<dt>Dialog Boxes</dt>
<dd>Some dialog windows extend off the bottom or sides of the screen. It is not possible to see some parts of the dialog box, or the close or apply buttons (eg. Login Window Preferences, Nautilus Preferences). Some programs (ERIC IDE for python) also extend off the edge.</dd>

<dt>Dual Monitor Support</dt>
<dd>Dual monitor support needs some work. Best I could do was get each screen to be the proper resolution and settings, but the screens were different heights. The shorter screen allowed items on the screen to move off the top, up to the height of the other screen. It seemed that the two screens became one large rectangle, rather than two different-sized rectangles side-by-side.</dd>

<dt>Web Cam</dt>
<dd>Web cams tend to work straight away, no drivers or fiddling around needed, especially in Cheese. (Better than Windows!)</dd>

<dt>Speed and Responsiveness</dt>
<dd>UNR is quite quick, even from the LiveUSB. </dd>

<dt>Setup and Configuration</dt>
<dd>Touch pad needs changes to xorg.conf and adding i8042.nomux to GRUB boot params.</dd>

<dt>UNR Menu (Clutter-based)</dt>
<dd>
<ul>
<li>It is easy to use-the menu over the desktop is effective and well organised.</li>
<li>Favourites menu is great!</li>
<li>Love the mini icons for running programs.</li>
<li>Would be good if the tool-tip on minimised program icons (info that pops-up when hovering) appeared straight away, rather than having to wait. Hard to tell the difference between multiple folders, for example.</li>
</ul>
</dd>

<dt>Finding and Installing Programs</dt>
<dd>Heaps of apps in the Add/Remove Programs section. Even if it can't be found there, management of .deb packages downloaded from web is great.</dd>

<dt>Nautilus</dt>
<dd><a href="http://brainstorm.ubuntu.com/idea/12621/">A similar gripe</a>: make changing the appearance of Nautilus a right-click menu option.</dd>

<dt>System Monitor</dt>
<dd>The 'Resources' tab can cause the System Monitor itself to use More resources. Might be the pretty history lines?</dd>

<dt>Power</dt>
<dd>Great Power History graph, shows all sorts of things about the battery, sleep and idle times.</dd>

<dt>Firefox</dt>
<dd>Should have a more compact skin by default. Uses up too much screen space at first.</dd>
</dl>
</p>
