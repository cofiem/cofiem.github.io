---
layout: post
title: Repairing a wireless network connection
tags:
- web
- windows
- troubleshooting
- wireless
---
<p>I've recently had the very exciting experience (yeah...) of attempting to diagnose and fix a wireless connection in Windows XP on a laptop. I think I've tried every trick in the book, but nothing's worked. For the sake of completeness, I'm going to list out my plan of attack. If I've missed anything, please let me know in a comment!</p>

<p>In order from most likely/least drastic to least likely/most drastic:</p>

<ol>
<li>Repair the Local Area Connection.</li>
<li>Use the command prompt to ping the router and another computer on the network</li>
<li>Use <code>ipconfig /all</code> to show the current IP address and adapters. This helps identify the problem.</li>
<li>Using the command prompt: 
   <ol>
   <li><code>ipconfig /release</code></li>
   <li><code>ipconfig /renew</code></li>
   </ol>
</li>
<li>Disable and enable the wireless card (usually with a switch on the laptop).</li>
<li>Disable and enable the Local Area Connection in Network Connections.</li>
<li>Turn the wireless router off, wait for 10 seconds, and turn it on again.</li>
<li>Check the DHCP settings in the router - DCHP table, start and end IP addresses.</li>
<li>Check the Device Manager to make sure the hardware is recognised, the drivers are functioning and up to date.</li>
<li>Use <a href="http://www.cpuid.com/pcwizard.php">PC Wizard</a> (from a flash drive if possible) to check the condition and type of wireless card.</li>
<li>Check the manufacturer's website for updated drivers; sometimes it is also worth checking for updated generic drivers. This includes trying out alternate wireless managers that replace the built-in Windows wireless manager.</li>

<li><a href="http://support.microsoft.com/kb/299357">Reset TCP/IP</a> - <code>netsh int ip reset c:\resetlog.txt</code>

</ol>

<p>If all this fails, then there is a hardware problem with the laptop, a problem with the router, or interference between the laptop and router. These issues require a whole separate set of troubleshooting steps.</p>

<p>I hope this can help someone!</p>
