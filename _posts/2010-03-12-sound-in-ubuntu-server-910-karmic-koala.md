---
layout: post
title: Sound in Ubuntu Server 9.10 Karmic Koala
tags:
- linux
- server
- GUI
- media centre
- tv
- geekery
- ubuntu
- sound
- wireless
- audio
---
<p>I've recently attached my previously headless <a href="http://www.ubuntu.com/products/whatisubuntu/serveredition">Ubuntu server</a> to a TV - so it's purpose has morphed to be a server plus a media centre. I've installed <a href="http://fluxbox.org/">Fluxbox</a>, a minimal window manager for <a href="http://en.wikipedia.org/wiki/X_Window_System">X</a>. It means there's a GUI for the server for playing videos and maybe even <a href="http://www.youtube.com/">youtube</a> videos (if the old video card in the server can handle it).</p>

<p>All the extra software is available through the Ubuntu repositories. <a href="https://help.ubuntu.com/community/Installation/LowMemorySystems">Installing fluxbox</a> was not too difficult, although there were some problems getting everything required to run a GUI. It is <a href="https://help.ubuntu.com/community/Fluxbox">quite configurable</a>, but I haven't gotten around it that just yet. The default set-up is usable. Then just add <a href="http://en.wikipedia.org/wiki/Midori_%28web_browser%29">Midori</a> for web browsing and <a href="http://www.videolan.org/">VLC</a> for video.</p>

<p>Getting the wireless connection and sound to work was quite tricky. For wireless, I had a D-Link <a href="http://www.dlink.com/products/?pid=334">DWL-G122 802.11g Adapter</a> available. The driver worked without any troubles, and I found wpa_supplicant the easiest way to set up the wireless. 
The two most important places to look when doing this are <code>/etc/network/interfaces</code> and <code>/etc/wpa_supplicant/wpa_supplicant.conf</code>.
These were some of the most helpful pages:
<ul>
<li><a href="http://ubuntuforums.org/showthread.php?t=1259003">How To: set up wpa_supplicant roaming mode and automatically start at boot</a></li>
<li><a href="http://www.atlink.it/~conti/articles/d-link-dwl-g122-and-linux/">D-LINK DWL G122 and Linux</a></li>
<li><a href="http://ubuntuforums.org/showthread.php?t=318539"> HOWTO: Wireless Security - WPA1, WPA2, LEAP, etc. </a></li>
<li><a href="http://blog.tplus1.com/index.php/2008/06/13/how-to-connect-to-a-wireless-network-from-the-ubuntu-command-line/">How to connect to a wireless network from the Ubuntu command line</a></li>
</ul>
</p>

<p>Getting sound was a bit of a struggle. First of all, don't try making sound work in the 2.6.31-20 Linux kernel. It just doesn't. If you don't trust me, have a look around the web - people are finding problems everywhere. Next, it helps to have speakers plugged in (to the correct output jack) and turned on. Then check the volume in Linux. And the volume in the application.</p>

<p>For sound troubles, the best resource was this <a href="http://ubuntuforums.org/showthread.php?t=205449">Comprehensive Sound Problem Solutions Guide</a>. Since PulseAudio is the default Ubuntu sound server now, the <a href="https://wiki.ubuntu.com/PulseAudio">documentation pages</a> can be a real help.</p>

<p>Some of the most useful commands and files I found were:
<dl>
<dt><code>alsamixer</code></dt>
<dd>command line volume control</dd>
<dt><code>less /proc/asound/modules</code></dt>
<dd>List the available/known sound cards.</dd>
<dt><code>ps ax | grep pulseaudio</code></dt>
<dd>Check if PulseAudio is running (there might be a entry for the grep command itself - ignore that). </dd>
<dt><code>pulseaudio -k</code></dt>
<dd>Kill any running pulseaudio server</dd>
<dt><code>pulseaudio -D</code></dt>
<dd>Start pulseaudio as a deamon (in the background)</dd>
<dt>/etc/modprobe.d/alsa-base.conf</dt>
<dd>ALSA config file in Ubuntu.</dd>
<dt>/etc/modprobe.d/sound.conf</dt>
<dd>Sound card config file in Ubuntu.</dd>
<dt><code><a href="http://alsa.opensrc.org/index.php/Speaker-test">speaker-test</a></code></dt>
<dd>Use this command to play a test sound. Very useful to see if anything is actually happening. </dd>
</dl>
</p>
