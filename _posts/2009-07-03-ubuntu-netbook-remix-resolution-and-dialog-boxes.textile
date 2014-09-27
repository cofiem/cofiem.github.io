---
layout: post
title: Ubuntu Netbook Remix resolution and dialog boxes
tags:
- ubuntu
- screen
- resolution
- netbook
- linux
- web dev
---
<p>The new rise of netbooks is causing all sorts of problems, including resurrecting issues that were assumed to be fading away. Psion, an obscure manufacturer until recently, suddenly <a href="http://www.laptopical.com/psion-remembered-they-owned-the-word-netbook-today-and-might-sue,-uh,-everyone-39555.html">found a new use</a> for their old 'Netbook' term - sue anyone else using it as a new catchphrase! Intel seemed to love the term, and even Dell <a href="http://arstechnica.com/gadgets/news/2009/02/dell-fights-back-against-psion-netbook-trademark-rampage.ars">got in on the action</a>, looking to help free 'netbook' from the clutches of Psion's trademark. The most recent news is that Intel and Psion have settled, with Psion <a href="http://www.engadget.com/2009/06/01/psion-relents-netbook-ok-to-describe-chubby-cheap-laptops-lac/">ceasing to lay claim</a> to the term.</p>

 <p>Smaller screens are causing issues for designers, on the web and the operating system. Netbooks are designed to be small, and they're shipping with some rather odd new screen sizes. Just as the standard minimum width was settling to 1024 pixels, there are (low-end) netbooks with 800x480. <a href="http://derekhat.com/the-netbook-resolution-conundrum/">This poses a problem</a>: as the use of internet-connected mobile devices grows, where do netbooks fit in? Are they just large mobile devices, smaller laptops, or do they have a class all of their own? And should designers change their ways to accommodate?</p>

<p>Odd sizes can also be an issue for dialog boxes. The default ratio of 4:3 goes out the window (no pun intended, really...) with netbooks. Many are more 16:9 (approx wide screen) than 4:3, or they're exactly square... or somewhere in between. These sizes can cause some un-foreseen issues, such as the bottom of dialog boxes disappearing from view. Sometimes the hidden section can include the all-important 'OK' or 'Save' buttons. Some of the places this has shown up in Ubuntu Netbook Remix include: 
<dl>
<dt>Qt 4 Settings/Configuration Dialog</dt>
<dd>The bottom of the dialog goes off the screen in 1024x600. There's not too much that's interesting, but it won't let me resize it to get everything on the screen.</dd>

<dt>Nautilus File Management Preferences</dt>
<dd>This one is more serious, as the buttons are the only thing hidden, and it at first looks as though the buttons are missing, rather than just hidden off-screen. This could easily confuse many users.</dd>
</dl>

One way to get to those buttons is to <a href="http://ubuntuforums.org/showthread.php?p=7520325">move the window</a> by holding the Alt button, and clicking, holding anywhere on the window, and dragging. Another could be for the dialog boxes to be remade in a way similar to the 'Sound Preferences' box &mdash; with a scrollbar within each tab, allowing the box to be re-sized to any height.</p>
