---
layout: post
title: Desktop music programs
tags:
- linux
- music
- foobar2000
- winamp
- windows
- ubuntu
- ogg
- itunes
- wmp
- xiph
---
<p>For years, my favourite music player was <a href="http://www.winamp.com/">Winamp</a>. 
I used it from around version 2, up through version 3, and the <a href="http://www.winamp.com/help/FAQ#General">jump to version 5</a>.

That was <a href="http://www.oldapps.com/winamp.php">quite a while using one program</a>, when there are any number of alternates available. I enjoyed the skins, and experimented with quite a few - even the "non-square" ones and the slide-out drawers. I spent some time with a relatively slow computer, and the speed of development slowed down. I went looking for a new music player.</p>

<p>Over the years I'd occasionally tried out other players - I learnt to loathe RealPlayer, and the way it messed up Windows even as it was installing. Windows Media Player just wasn't cool. I've tried out <a href="http://www.getsongbird.com/">Songbird</a>; I like that's based on the same technologies as Firefox, I like it's ideas. It always has one or two bugs that make it unusable for me. The first time round it was the lack of proper queuing functionality. I found an extension, but it crashed too much. The most recent try was foiled by a feature as simple as keeping track of the song in the playlist that is currently playing.</p>

<p>For a time I gave Linux a really good shot in the form of <a href="http://www.ubuntu.com">Ubuntu</a>. It has improved in leaps and bounds in the last few years. To the point that I would genuinely use it as my OS, if I didn't play games. Using <a href="http://store.steampowered.com/">Steam</a>, no less&hellip; The two main music players I used with Ubuntu were <a href="http://projects.gnome.org/rhythmbox/">Rhythmbox</a> and <a href="http://amarok.kde.org/">Amarok</a>. Another widely-used player is <a href="http://banshee.fm/">banshee</a>. All three are great music players: they include integrated web music services, plugins for various other features such as last.fm scrobbling, monitor your music folder, let you choose to automatically organise your music, and all the other standard features.</p>

<p>I've tried iTunes, and currently have it installed. I use it to automatically organise any new media I get. The "Automatically Add to iTunes" folder is useful. I'm really not a fan of the way it tries to take control. It wants to be the default program for all media types. Wants to organise media automatically without giving easy options to disable it. It also cannot handle <a href="http://www.vorbis.com/">ogg vorbis</a> media files by default. Thankfully the same foundation that heads ogg vorbis development also produces <a href="http://www.xiph.org/quicktime/">components</a> to let iTunes and other Apple products use ogg vorbis (audio) and theora (video).</p>

<p>My new favourite music player, and the program I seem to keep going back to, is <a href="http://www.foobar2000.org/">foobar2000</a>. I really wish it was open source, but apart from that, it does what is says, and does it well. It is supremely customisable and has plenty of extra components. I also has a resonable memory footprint.</p>

<p>Here are some of the features I use:
<ul>
<li>Global keyboard shortcuts (do not require foobar2000 to be focussed to be used) - I always assign 'Next Song' to Ctrl+Alt+Page Down.</li>
<li>Autoplaylists are a great way to gather the music that I want into a playlist dynamically. Among others, I have:
<ul><li> an all music playlist using query pattern <code>%play_count% GREATER -1</code>, sorted by <code>%ALBUM ARTIST% - %DATE% - %ALBUM% - %PATH_SORT% - %DISCNUMBER% - %TRACKNUMBER% - %TITLE%</code> (<a href="http://www.head-fi.org/forum/thread/219262/foobar-how-do-you-sort-by-date">sort pattern source</a>).</li>
<li>and a recently added playlist <code>%added% DURING LAST 1 WEEK SORT DESCENDING BY %added%</code>.</li>
</ul>
<li>I'm also partial to the various visualisations - not colourful swirls - spectrogram, oscilloscope, peak meter, spectrum and VU meter.
</ul>
</p>
